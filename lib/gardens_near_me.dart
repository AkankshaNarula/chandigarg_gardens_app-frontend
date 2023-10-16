import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class GardensNearMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gardens Near Me'),
      ),
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'images/img_chd_map.png',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                // Add your content for the Gardens Near Me page here
              ],
            ),
          ),
          // Define the custom positions for the icons within the Stack
          Positioned(
            top: 250, // Adjust these values to place the icons where you want
            left: 140,
            child: LocationIcon(
              icon: Icons.location_on,
              label: 'Sector 16 Garden',
              onTap: () {
                MapsLauncher.launchQuery('Sector 16 Garden, Chandigarh');
              },
            ),
          ),
          Positioned(
            top: 450,
            left: 140,
            child: LocationIcon(
              icon: Icons.location_on,
              label: 'Sector 32 Garden',
              onTap: () {
                MapsLauncher.launchQuery('Sector 32 Garden, Chandigarh');
              },
            ),
          ),
          Positioned(
            top: 230,
            left: 150,
            child: LocationIcon(
              icon: Icons.location_on,
              label: 'Rose Garden',
              onTap: () {
                MapsLauncher.launchQuery('Rose Garden, Chandigarh');
              },
            ),
          ),
          Positioned(
            top: 340,
            left: 250,
            child: LocationIcon(
              icon: Icons.location_on,
              label: 'Butterfly Park',
              onTap: () {
                MapsLauncher.launchQuery('Butterfly Park, Chandigarh');
              },
            ),
          ),
          Positioned(
            top: 200,
            left: 200,
            child: LocationIcon(
              icon: Icons.location_on,
              label: 'Leisure Valley',
              onTap: () {
                MapsLauncher.launchQuery('Leisure Valley, Chandigarh');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LocationIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  LocationIcon({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            size: 48,
            color: const Color.fromARGB(255, 14, 71, 16),
          ),
          Text(
            label,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
