import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  bool isVisible = false;

  void chageVisibility() {
    this.isVisible = !this.isVisible;
    notifyListeners();
  }
}
