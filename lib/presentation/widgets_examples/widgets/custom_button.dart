import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTapFunc;
  final String text;
  final Color buttonColor;
  const CustomButton(
      {Key? key,
      required this.onTapFunc,
      required this.text,
      required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTapFunc(),
      child: Material(
        elevation: 16,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: buttonColor,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}
