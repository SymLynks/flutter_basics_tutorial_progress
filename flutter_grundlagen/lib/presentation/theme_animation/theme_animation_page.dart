import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/application/theme_service.dart';
import 'package:flutter_grundlagen/presentation/theme_animation/widgets/moon.dart';
import 'package:flutter_grundlagen/presentation/theme_animation/widgets/star.dart';
import 'package:flutter_grundlagen/presentation/theme_animation/widgets/sun.dart';
import 'package:flutter_grundlagen/presentation/theme_animation/widgets/theme_switch.dart';
import 'package:provider/provider.dart';

class ThemeAnimationPage extends StatelessWidget {
  const ThemeAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeData = Theme.of(context);

    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Theme Animation'),
          centerTitle: true,
          //backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        ),
        backgroundColor: _themeData.scaffoldBackgroundColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 20,
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 100, maxWidth: 500),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: themeService.isDarkModeOn
                            ? const [
                                Color(0xFF94A9FF),
                                Color(0xFF6B66CC),
                                Color(0xFF200F75),
                              ]
                            : const [
                                Color(0xDDFFFA66),
                                Color(0xDDFFA057),
                                Color(0xDD940B99),
                              ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(top: 70, right: 50, child: AnimatedStar()),
                      const Positioned(top: 150, left: 60, child: AnimatedStar()),
                      const Positioned(top: 40, left: 200, child: AnimatedStar()),
                      const Positioned(top: 50, left: 50, child: AnimatedStar()),
                      const Positioned(top: 100, right: 200, child: AnimatedStar()),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 400),
                        top: themeService.isDarkModeOn ? 100 : 130,
                        right: themeService.isDarkModeOn ? 100 : -40,
                        child: AnimatedOpacity(
                          opacity: themeService.isDarkModeOn ? 1 : 0,
                          duration: const Duration(milliseconds: 500),
                          child: const Moon(),
                        ),
                      ),
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 200),
                        padding: EdgeInsets.only(top: themeService.isDarkModeOn ? 110 : 50),
                        child: const Center(child: Sun()),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 225,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: _themeData.colorScheme.onPrimary,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(themeService.isDarkModeOn ? 'Zu dunkel?' : 'Zu hell?',
                                  style: _themeData.textTheme.headline1),
                              const SizedBox(height: 15),
                              Text(
                                  themeService.isDarkModeOn ? 'Lass die Sonne aufgehen:' : 'Lass die Sonne untergehen:',
                                  style: _themeData.textTheme.bodyText1),
                              const SizedBox(height: 50),
                              const ThemeSwitcher(),
                              /*Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Dark Theme:', style: _themeData.textTheme.bodyText1),
                                  const SizedBox(width: 15),
                                  Switch(
                                    value: themeService.isDarkModeOn,
                                    onChanged: (value) {
                                      Provider.of<ThemeService>(context, listen: false).toggleTheme();
                                    },
                                  ),
                                ],
                              ),*/
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
