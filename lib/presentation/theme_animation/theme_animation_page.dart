import 'package:flutter/material.dart';

class ThemeAnimationPage extends StatelessWidget {
  const ThemeAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeData = Theme.of(context);

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
                        style: _themeData.textTheme.headline1!
                            .copyWith(fontSize: 16)),
                    const SizedBox(height: 15),
                    Text('Test Body',
                        style: _themeData.textTheme.headline1!
                            .copyWith(fontSize: 14)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
