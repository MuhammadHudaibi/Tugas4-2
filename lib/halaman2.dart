import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas4_2/halaman3.dart';

class HalamanDua extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Dua', style: GoogleFonts.poppins()),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
      ), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            ElevatedButton(onPressed: (){
              Get.snackbar('Annita Maxwynn', 'menyala abangku');
            }, 
            child: Text(
              'Muncul ScackBar',
              style: GoogleFonts.poppins(
                color: Colors.white
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Get.to(HalamanTiga());
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