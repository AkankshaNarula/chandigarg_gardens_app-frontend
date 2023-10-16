import 'package:flutter/material.dart';
import 'package:tree_app/tree_info.dart';

List<String> fav_arr = [];

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'images/img_main.png', // Replace with your image path
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ListView.builder(
            itemCount: fav_arr.length,
            itemBuilder: (context, index) {
              final uid = fav_arr[index];
              final treeInfo = arr.firstWhere((tree) => tree[0] == uid);
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TreeInfoPage(uid: uid),
                    ),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                        treeInfo[2]), // Display common name as the card title
                    subtitle: Text(
                        treeInfo[1]), // Display scientific name as subtitle
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
