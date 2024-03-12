import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas4_2/halaman4.dart';

class HalamanTiga extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(appBar: AppBar(
      title: Text('Halaman Tiga', style: GoogleFonts.poppins()),
      backgroundColor: Colors.amber,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20.0),
          ElevatedButton(onPressed: (){
            Get.dialog(
              AlertDialog(
                title: Text('Pengen Nanya dong', style: GoogleFonts.poppins()),
                content: Text('LearningX keren ga?', style: GoogleFonts.poppins()),
                actions: [
                  TextButton(onPressed: (){Get.back();}, child: Text('Keren', style: GoogleFonts.poppins())),
                  TextButton(onPressed: (){Get.back();}, child: Text('Keren banget', style: GoogleFonts.poppins()))
                ],
              ),
            );
          }, 
          child: Text(
            'Muncul Dialog',
            style: GoogleFonts.poppins(
              color: Colors.white
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Get.to(HalamanEmpat());
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
    ),
  );
}
}
