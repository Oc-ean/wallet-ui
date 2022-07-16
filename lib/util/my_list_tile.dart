import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String imagePath;
  final String tileTitle;
  final String tileSubTitle;
  const MyListTile(
      {Key? key,
      required this.imagePath,
      required this.tileTitle,
      required this.tileSubTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image
          Row(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade100,
                ),
                child: Image.asset(imagePath),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    tileSubTitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
