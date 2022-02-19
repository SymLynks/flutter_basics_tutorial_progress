import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/custom_button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        centerTitle: true,
        backgroundColor: Colors.green[200]!,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTapFunc: () => Navigator.of(context).pop(),
              text: 'Home',
              buttonColor: Colors.green[200]!,
            ),
            const SizedBox(height: 30),
            CustomButton(
              onTapFunc: () =>
                  Navigator.of(context).pushReplacementNamed('/screen1'),
              text: 'Screen 1',
              buttonColor: Colors.blue[200]!,
            ),
          ],
        ),
      ),
    );
  }
}
