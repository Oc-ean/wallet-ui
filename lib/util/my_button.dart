import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  final dynamic imageHeight;
  const MyButton({
    Key? key,
    required this.imagePath,
    required this.buttonText,
    required this.imageHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Card(
            elevation: 5.0,
            surfaceTintColor: Colors.grey.shade100,
            shadowColor: Colors.white54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                height: imageHeight,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        // text

        Text(
          buttonText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
