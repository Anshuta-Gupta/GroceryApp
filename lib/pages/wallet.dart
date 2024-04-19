import 'package:app1/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Divider(),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Color(0xFFF2F2F2)),
          child: Row(
            children: [
              Image.asset(
                "images/wallet.png",
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Wallet",
                    style: AppWidget.LightTextFieldStyle(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "₹ 100",
                    style: AppWidget.semiboldTextFieldStyle(),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Add Money",
            style: AppWidget.semiboldTextFieldStyle(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9E2E2)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "₹ 100",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9E2E2)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "₹ 200",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9E2E2)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "₹ 500",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9E2E2)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "₹ 1000",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE9E2E2)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "₹ 1500",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 12),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xFF008080), borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: Text(
            "Add",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )),
        )
      ]),
    );
  }
}
