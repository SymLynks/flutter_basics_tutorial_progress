import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/custom_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTapFunc: () => Navigator.of(context).pop(),
              text: 'Home',
              buttonColor: Colors.blue[200]!,
            ),
            const SizedBox(height: 30),
            CustomButton(
              onTapFunc: () =>
                  Navigator.of(context).pushReplacementNamed('/screen2'),
              text: 'Screen 2',
              buttonColor: Colors.green[200]!,
            ),
          ],
        ),
      ),
    );
  }
}
