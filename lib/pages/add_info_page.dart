import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/transaction_page.dart';
import 'package:wallet_app_ui/util/my_list_tile.dart';

class AddInfoPage extends StatelessWidget {
  const AddInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      //   color: Color(0xFF757575),
      //   child: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(20),
      //         topRight: Radius.circular(20),
      //       ),
      //       color: Colors.grey.shade300,
      //     ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 6,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Select your Bank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransactionPage(),
                          ));
                    },
                    child: MyListTile(
                      imagePath: 'images/c.png',
                      tileTitle: 'CityBank',
                      tileSubTitle: '**** 2345',
                    ),
                  ),
                  MyListTile(
                    imagePath: 'images/h.png',
                    tileTitle: 'HsbcBank',
                    tileSubTitle: '**** 2345',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
