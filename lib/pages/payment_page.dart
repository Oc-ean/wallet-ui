import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/add_info_page.dart';
import 'package:wallet_app_ui/util/my_button.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showModalBottomSheet(
      //       context: context,
      //       builder: (context) => AddInfoPage(),
      //     );
      //   },
      //   backgroundColor: Colors.blueGrey,
      //   child: const Icon(
      //     Icons.monetization_on,
      //     size: 30,
      //   ),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   color: Colors.blueGrey,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.home,
      //           size: 30,
      //         ),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.settings,
      //           size: 30,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 29,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              size: 29,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Money',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add your bank account',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 140,
              // height: ,
              padding: EdgeInsets.all(
                10,
              ),
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.lightBlueAccent.withOpacity(0.4),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text(
                            'Why add bank account ?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'images/l.png',
                        height: 60,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 155),
                    child: Text(
                      'Without adding your bank',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 140),
                    child: Text(
                      'account, you are not able to',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 230),
                    child: Text(
                      'send money.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  )
                ],
              ),

              // SizedBox(
              //   height: 6,
              // ),
              // Text(
              //   'Without adding your bank',
              //   style: TextStyle(
              //     color: Colors.black54,
              //     fontSize: 15,
              //   ),
              // ),
              // SizedBox(
              //   height: 2,
              // ),
              // Text(
              //   'account. you are notable to',
              //   style: TextStyle(
              //     color: Colors.black54,
              //   ),
              // ),
              // SizedBox(
              //   height: 2,
              // ),
              // Text(
              //   'send money.',
              //   style: TextStyle(
              //     color: Colors.black54,
              //   ),
              // ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MyButton(
                  imagePath: 'images/c.png',
                  buttonText: 'City\nBank',
                  imageHeight: 89.0,
                ),
                MyButton(
                  imagePath: 'images/p.png',
                  buttonText: 'Pnc\nBank',
                  imageHeight: 70.0,
                ),
                MyButton(
                  imagePath: 'images/h.png',
                  buttonText: 'Bank of\nAmerica',
                  imageHeight: 80.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: const AddInfoPage(),
            ),
          )

          // Container(
          //   height: MediaQuery.of(context).size.height * 0.354,
          //   width: MediaQuery.of(context).size.height * 32,
          //   color: Colors.red,
          // )
          // ElevatedButton(
          //   onPressed: () {
          //     showModalBottomSheet(
          //       context: context,
          //       builder: (context) => AddInfoPage(),
          //       shape: const RoundedRectangleBorder(
          //         // <-- SEE HERE
          //         borderRadius: BorderRadius.vertical(
          //           top: Radius.circular(25.0),
          //         ),
          //       ),
          //     );
          //   },
          //   child: Text(
          //     'Click here',
          //   ),
          // ),
        ],
      ),
    );
  }
}
