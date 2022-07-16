import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final dynamic contColor;
  final dynamic conColor;
  final dynamic iconColor;
  final String firstText;
  final String secondText;
  final IconData icon;
  const MyCard({
    Key? key,
    required this.iconColor,
    required this.conColor,
    required this.contColor,
    required this.firstText,
    required this.secondText,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      // height: 160,
      // width: 160,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            // darker shadow
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: const Offset(5, 5),
          ),
          const BoxShadow(
            // darker shadow
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-5, -5),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        color: contColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25,
                ),
                color: conColor,
                // image: DecorationImage(
                //   image: AssetImage(
                //     'images/f.png',
                //   ),
              ),
              child: Icon(
                icon,
                size: 80,
                color: iconColor,
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            firstText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text(
            secondText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
