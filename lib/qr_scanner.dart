import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:tree_app/tree_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tree App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: QRScannerPage(),
    );
  }
}

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({Key? key}) : super(key: key);

  @override
  _QRScannerPageState createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  bool isScanCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Place the QR code in the area",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Scanning will be started automatically",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.transparent, // Make the background transparent
                child: MobileScanner(
                  onDetect: (capture) {
                    if (!isScanCompleted) {
                      final List<Barcode> barcodes = capture.barcodes;

                      // Assuming you want to process the first barcode found in the new package.
                      if (barcodes.isNotEmpty) {
                        String uid = barcodes[0].rawValue ?? '---';
                        isScanCompleted = true;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TreeInfoPage(uid: uid)));
                      }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Reset isScanCompleted to false when the page is disposed.
    isScanCompleted = false;
    super.dispose();
  }
}
