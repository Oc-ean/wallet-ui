import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  const MyButton({
    Key? key,
    required this.imagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 95,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 30,
                spreadRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Image.asset(imagePath),
          ),
        ),
        const SizedBox(height: 4),
        // text

        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }
}
