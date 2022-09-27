import 'package:flutter/material.dart';

class ProductState with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;

  set quantity(int newValue) {
    _quantity = newValue;
    notifyListeners();
  }
}