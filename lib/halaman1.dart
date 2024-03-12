import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'halaman2.dart';
import 'halaman1_manager.dart';

class HalamanSatu extends StatefulWidget {
  @override
  _HalamanSatuState createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu> {
  final Halaman1Manager manager = Halaman1Manager();
  bool isUppercase = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Satu', style: GoogleFonts.poppins()),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              '${manager.user}',
              style: GoogleFonts.poppins(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isUppercase) {
                    manager.ubahUp();
                  } else {
                    manager.ubahLow();
                  }
                  isUppercase = !isUppercase;
                });
              },
              child: Text(
                isUppercase ? 'Uppercase' : 'Lowercase',
                style: GoogleFonts.poppins(fontSize: 18.0, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: isUppercase ? Colors.green : Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: ()  {
                Get.to(HalamanDua());
              }, 
              child: Text(
                'Selanjutnya',
                style: GoogleFonts.poppins(fontSize: 20.0, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
