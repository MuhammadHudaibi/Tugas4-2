import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas4_2/halaman1.dart';

class HalamanEmpat extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(appBar: AppBar(
      title: Text('Halaman Empat', style: GoogleFonts.poppins()),
      backgroundColor: Colors.amber,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20.0),
          ElevatedButton(onPressed: (){
            Get.bottomSheet(
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ini adalah bottom sheet ya adik-adik!',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Kembali', style: GoogleFonts.poppins(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }, 
          child: Text(
            'Muncul Bottom Sheet',
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
              Get.offAll(HalamanSatu());
            }, 
            child: Text(
              'Beranda',
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
    ),
  );
}
}