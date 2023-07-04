import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/transaction_page.dart';
import 'package:wallet_app_ui/util/my_list_tile.dart';

class AddInfoPage extends StatelessWidget {
  const AddInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
        clipBehavior: Clip.none,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 3,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
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
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  MyListTile(
                    imagePath: 'images/c.png',
                    tileTitle: 'CityBank',
                    tileSubTitle: '**** 2345',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TransactionPage(),
                          ));
                    },
                  ),
                  MyListTile(
                    imagePath: 'images/h.png',
                    tileTitle: 'HsbcBank',
                    tileSubTitle: '**** 2345',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TransactionPage(),
                          ));
                    },
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
