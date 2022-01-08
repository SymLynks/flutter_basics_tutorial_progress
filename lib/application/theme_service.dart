import 'package:flutter/widgets.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = true;

  void toggleTheme() {
    isDarkModeOn = !isDarkModeOn;
    notifyListeners();
  }
}
