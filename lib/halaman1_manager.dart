import 'package:get/get.dart';

class Halaman1Manager {
  var user = 'Muhammad Hudaibi'.obs;
  

  void ubahUp(){
    user.value = user.value.toUpperCase();
  }

  void ubahLow(){
    user.value = user.value.toLowerCase();
  }
}