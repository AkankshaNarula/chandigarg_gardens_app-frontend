import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tree_app/favorites.dart';
import 'package:tree_app/welcome_page.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List<List<dynamic>> arr = [];

class TreeInfoPage extends StatefulWidget {
  final String uid;

  TreeInfoPage({required this.uid});

  @override
  _TreeInfoPageState createState() => _TreeInfoPageState();
}

class _TreeInfoPageState extends State<TreeInfoPage> {
  @override
  void initState() {
    super.initState();
    makeRequest();
  }

  Future<void> makeRequest() async {
    final response = await http
        .get(Uri.parse('https://gardens-project.onrender.com/api/all'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> trees = data;
      arr = trees.map((tree) {
        return [
          tree['uid'],
          tree['scientific_name'],
          tree['common_name'],
          tree['identifying_characters'],
          tree['economic_importance'],
          tree['flowering_time'],
        ];
      }).toList();
      setState(() {});
    } else {
      throw Exception('Failed to load data');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    int index = arr.indexWhere((treeInfo) => treeInfo[0] == widget.uid);

    if (index != -1) {
      return WillPopScope(
        onWillPop: () async {
          // Handle back button press here
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) =>
                  WelcomePage(), // Navigate to welcome_page.dart
            ),
            (Route<dynamic> route) =>
                false, // Remove all previous routes from the stack
          );
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tree Information'),
          ),
          body: TreeInfoStack(uid: widget.uid, treeInfo: arr[index]),
        ),
      );
    } else {
      return WillPopScope(
          onWillPop: () async {
            // Handle back button press here
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) =>
                    WelcomePage(), // Navigate to welcome_page.dart
              ),
              (Route<dynamic> route) =>
                  false, // Remove all previous routes from the stack
            );
            return false;
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text('Tree Information'),
            ),
            body: Center(
              child: Text('Sorry! No tree data found'),
            ),
          ));
    }
  }
}

class TreeInfoStack extends StatefulWidget {
  final String uid;
  final List<String> treeInfo;

  TreeInfoStack({required this.uid, required this.treeInfo});

  @override
  _TreeInfoStackState createState() => _TreeInfoStackState();
}

class _TreeInfoStackState extends State<TreeInfoStack> {
  int _current = 0;
  Map<String, dynamic> _selectedIndex = {};

  CarouselController _carouselController = CarouselController();

  List<Map<String, dynamic>> _products = [];
  void toggleFavorite() {
    setState(() {
      if (fav_arr.contains(widget.uid)) {
        fav_arr.remove(widget.uid);
      } else {
        fav_arr.add(widget.uid);
      }
    });
  }

  @override
  void initState() {
    super.initState();

    _products = [
      {
        'title': 'Scientific Name',
        'image': 'images/img_sn.json',
        'description': ' ${widget.treeInfo[_current + 1]}',
      },
      {
        'title': 'Common Name',
        'image': 'images/img_cn.json',
        'description': ' ${widget.treeInfo[_current + 2]}',
      },
      {
        'title': 'Identifying Character',
        'image': 'images/img_ic.json',
        'description': ' ${widget.treeInfo[_current + 3]}',
      },
      {
        'title': 'Economic Importance',
        'image': 'images/img_es.json',
        'description': ' ${widget.treeInfo[_current + 4]}',
      },
      {
        'title': 'Flowering Time',
        'image': 'images/img_ft.json',
        'description': ' ${widget.treeInfo[_current + 5]}',
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: toggleFavorite,
        child: Icon(
          fav_arr.contains(widget.uid)
              ? Icons.favorite
              : Icons.favorite_border_rounded,
          color: fav_arr.contains(widget.uid) ? Colors.red : Colors.black,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 450.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.70,
            enlargeCenterPage: true,
            pageSnapping: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: _products.map((product) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_selectedIndex == product) {
                        _selectedIndex = {};
                      } else {
                        _selectedIndex = product;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: _selectedIndex == product
                          ? Border.all(color: Colors.blue.shade500, width: 3)
                          : null,
                      boxShadow: _selectedIndex == product
                          ? [
                              BoxShadow(
                                color: Colors.blue.shade100,
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              )
                            ]
                          : [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 20,
                                offset: Offset(0, 5),
                              )
                            ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 320,
                            margin: EdgeInsets.only(top: 10),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Lottie.asset(product['image'],
                                fit: BoxFit.cover),
                          ),
                          SizedBox(height: 20),
                          Text(
                            product['title'],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          Text(
                            product['description'],
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
