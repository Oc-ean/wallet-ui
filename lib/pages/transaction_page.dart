import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_ui/util/my_card.dart';
import 'package:wallet_app_ui/util/my_list_tile.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    'Send',
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Money',
                    style: TextStyle(
                      fontSize: 29,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  MyCard(
                    iconColor: Colors.pink.shade100,
                    conColor: Color(0xFFFEEAEA),
                    contColor: Color(0xFFFFDADB),
                    firstText: 'To your',
                    secondText: 'Own account',
                    icon: Icons.arrow_circle_down_rounded,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  MyCard(
                    iconColor: Color(0xFF88CBFF),
                    conColor: Color(0xFFC6E6FF),
                    contColor: Colors.white,
                    firstText: 'To your',
                    secondText: 'Bank account',
                    icon: Icons.arrow_circle_up_rounded,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    // darker shadow
                    color: Colors.grey.shade500,
                    blurRadius: 15,
                    offset: Offset(5, 5),
                  ),
                  BoxShadow(
                    // darker shadow
                    color: Colors.white,
                    blurRadius: 15,
                    offset: Offset(-5, -5),
                  ),
                ],
                borderRadius: BorderRadius.circular(40),
                color: Color(0xFF756AF4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 25),
                    child: Text(
                      'Send to your mobile contact',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              'Enter Name or Mobile Number',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(
                            CupertinoIcons.search,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  MyListTile(
                      imagePath: 'images/stp.png',
                      tileTitle: 'Micheal',
                      tileSubTitle: '+1 610 244 8974 '),
                  MyListTile(
                      imagePath: 'images/outdoor.png',
                      tileTitle: 'Charlotte',
                      tileSubTitle: '+1 585 438 0264 '),
                  MyListTile(
                      imagePath: 'images/pr.png',
                      tileTitle: 'Laura',
                      tileSubTitle: '+1 585 438 0138 '),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
