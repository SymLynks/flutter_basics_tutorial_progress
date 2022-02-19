import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/application/theme_service.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeService>(context);

    final _themeData = Theme.of(context);

    final Color backgroundColor = _themeData.colorScheme.primaryVariant;

    final Color buttonColor = _themeData.bottomAppBarColor;

    final List<String> switchText = ["Hell", "Dunkel"];
    return SizedBox(
      width: 200,
      height: 30,
      child: Stack(
        children: <Widget>[
          InkWell(
            onHover: (_) {},
            onTap: () {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                  child: Center(
                    child: Text(switchText[0], style: _themeData.textTheme.headline1),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(switchText[1], style: _themeData.textTheme.headline1),
                  ),
                ),
              ]),
            ),
          ),
          InkWell(
            onHover: (_) {},
            onTap: () {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 200),
              curve: Curves.decelerate,
              alignment: !themeProvider.isDarkModeOn ? Alignment.centerLeft : Alignment.centerRight,
              child: Container(
                width: 100,
                height: 30,
                decoration: ShapeDecoration(
                  color: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(!themeProvider.isDarkModeOn ? switchText[0] : switchText[1],
                    style: _themeData.textTheme.headline1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
