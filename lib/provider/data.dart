import 'package:flutter/material.dart';

class data extends ChangeNotifier{
  late String name="MR";
  late String email;
  late String password;
  late String phoneNumber;
  late int quantity =0;

  void add(){
    quantity++;
    notifyListeners();
  }

  void sub(){
    if(quantity > 1){
      quantity--;
      notifyListeners();
    }
  }
}