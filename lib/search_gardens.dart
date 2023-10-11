import 'package:flutter/material.dart';
import 'package:tree_app/qr_scanner.dart';
import 'dart:async';

class SearchGardensPage extends StatefulWidget {
  @override
  _SearchGardensPageState createState() => _SearchGardensPageState();
}

class _SearchGardensPageState extends State<SearchGardensPage> {
  String? selectedGarden;
  List<String> gardenList = [
    "Sector 16",
    "Sector 12",
    "Rose Garden",
    "Butterfly Park"
  ];

  List<String> sector16Facts = [
    " Sector 16 Garden has a variety of rare plant species.",
    " It's one of the oldest gardens in the city.",
    " Sector 16 Garden hosts monthly gardening workshops.",
    " It's a popular spot for birdwatching.",
    " The garden has a beautiful Japanese-style zen garden.",
  ];

  int currentFactIndex = 0;
  late Timer factTimer;

  @override
  void initState() {
    super.initState();
    startFactTimer();
  }

  void startFactTimer() {
    factTimer = Timer.periodic(Duration(seconds: 8), (timer) {
      setState(() {
        currentFactIndex = (currentFactIndex + 1) % sector16Facts.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gardens Near Me'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20), // Add space at the top
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/imgchd.png'),
            ),
            SizedBox(height: 10),
            Text(
              'Please Select The Garden:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButton<String>(
              hint: Text('Select a garden'),
              value: selectedGarden,
              onChanged: (newValue) {
                setState(() {
                  selectedGarden = newValue;
                  currentFactIndex = 0;
                });
              },
              items: gardenList.map((garden) {
                return DropdownMenuItem<String>(
                  value: garden,
                  child: Text(garden),
                );
              }).toList(),
            ),
            if (selectedGarden == null)
              Text(
                'Please select a garden!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            if (selectedGarden != null)
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Did You Know:',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.all(16.0), // Add space around the fact
                    child: AnimatedOpacity(
                      opacity: 1.0,
                      duration: Duration(seconds: 1),
                      child: Text(
                        sector16Facts[currentFactIndex],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QRScannerPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreenAccent,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              ),
              child: Text(
                'Scan QR Now',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Spacer(), // Pushes the image to the bottom
            Image.asset(
              'images/imgnature.png',
            ), // Display the image at the bottom
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    factTimer.cancel();
    super.dispose();
  }
}