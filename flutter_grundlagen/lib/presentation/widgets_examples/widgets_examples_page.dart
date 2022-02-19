import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/container_text_example.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/custom_button.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/media_query_example.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/page_view_example.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/profile_picture.dart';
import 'package:flutter_grundlagen/presentation/widgets_examples/widgets/row_expanded_example.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.home, size: 30),
        title: const Text("Widgets Examples"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ContainerTextExample(),
              const SizedBox(height: 30),
              const RowExpandedExample(),
              const SizedBox(height: 30),
              const ProfilePicture(),
              const SizedBox(height: 30),
              const MediaQueryExample(),
              const SizedBox(height: 30),
              const PageViewExample(),
              const SizedBox(height: 30),
              IconButton(
                hoverColor: Colors.red,
                splashColor: Colors.blue,
                onPressed: () {
                  // ignore: avoid_print
                  print('Icon Button pressed!');
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  // ignore: avoid_print
                  print('TextButton pressed!');
                },
                child: Container(
                  color: Colors.grey,
                  child: const Text(
                    'Text Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                onTapFunc: () {
                  Navigator.of(context).pushNamed('/screen1');
                },
                text: 'Screen 1',
                buttonColor: Colors.blue[200]!,
              ),
              const SizedBox(height: 30),
              CustomButton(
                onTapFunc: () {
                  Navigator.of(context).pushNamed('/screen2');
                },
                text: 'Screen 2',
                buttonColor: Colors.green[200]!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
