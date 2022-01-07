import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/navigation_example_screens/screen1.dart';
import 'package:flutter_grundlagen/presentation/navigation_example_screens/screen2.dart';
import 'package:flutter_grundlagen/root.dart';

void main() {
  runApp(const MyApp());
}

// wird benoetigt, um Widgets mit Maus ziehen zu koennen
// https://docs.flutter.dev/release/breaking-changes/default-scroll-behavior-drag
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const RootWidget(),
        '/screen1': (BuildContext context) => const Screen1(),
        '/screen2': (BuildContext context) => const Screen2(),
      },
      //home: const RootWidget(),
    );
  }
}
