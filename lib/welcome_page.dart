import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tree_app/gardens_near_me.dart';
import 'package:tree_app/search_gardens.dart';
import 'package:tree_app/favorites.dart';
import 'package:tree_app/settings.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currentImageIndex = 0;
  List<String> imagePaths = [
    'images/img1.png',
    'images/img2.png',
    'images/img3.png',
    'images/img4.png',
    'images/img5.png',
  ];

  @override
  void initState() {
    super.initState();
    // Start a timer to change the image after 5 seconds
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        currentImageIndex = (currentImageIndex + 1) % imagePaths.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white, // Your custom theme background color
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          imagePaths[currentImageIndex],
                          width: double.infinity,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Chandigarh Gardens',
                    style: TextStyle(
                      fontSize: 24, // Your custom font size
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Your custom text color
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                    child: Text(
                      'Discover the beauty of Chandigarh\'s iconic gardens and parks.',
                      style: TextStyle(
                        fontSize: 16, // Your custom font size
                        color: Colors.black, // Your custom text color
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Gardens Near Me page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GardensNearMePage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: Colors.black,
                                size: 24,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 12, 0),
                                child: Text(
                                  'Find Gardens Near Me',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Search Gardens page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchGardensPage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.search_rounded,
                                color: Colors.black,
                                size: 24,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 12, 0),
                                child: Text(
                                  'Search Gardens',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to My Favorites page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoritesPage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.favorite_rounded,
                                color: Colors.black,
                                size: 24,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 12, 0),
                                child: Text(
                                  'My Favorites',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Settings page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.settings_rounded,
                                color: Colors.black,
                                size: 24,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 0, 12, 0),
                                child: Text(
                                  'Settings',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
