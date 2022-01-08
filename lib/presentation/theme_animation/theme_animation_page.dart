import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/application/theme_service.dart';
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
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: _themeData.colorScheme.primary,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Test Heading',
                          style: _themeData.textTheme.headline1),
                      const SizedBox(height: 15),
                      Text('Test Body', style: _themeData.textTheme.bodyText1),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dark Theme:',
                              style: _themeData.textTheme.bodyText1),
                          const SizedBox(width: 15),
                          Switch(
                            value: themeService.isDarkModeOn,
                            onChanged: (value) {
                              Provider.of<ThemeService>(context, listen: false)
                                  .toggleTheme();
                            },
                          ),
                        ],
                      )
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
