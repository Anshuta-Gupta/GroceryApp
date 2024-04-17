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
        )
      ]),
    );
  }
}
