import 'package:app1/widget/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, salad = false, pizza = false, burger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello User, ',
                  style: AppWidget.boldTextFieldStyle(),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Delicious Food',
              style: AppWidget.HeadlineTextFieldStyle(),
            ),
            Text(
              'Discover and Get Great Food',
              style: AppWidget.LightTextFieldStyle(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    icecream = true;
                    pizza = false;
                    burger = false;
                    salad = false;
                    setState(() {});
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: icecream ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        'images/ice-cream.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: icecream ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = true;
                    burger = false;
                    salad = false;
                    setState(() {});
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: pizza ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        'images/pizza-slice.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: pizza ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = false;
                    burger = false;
                    salad = true;
                    setState(() {});
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: salad ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        'images/salad.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: salad ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = false;
                    burger = true;
                    salad = false;
                    setState(() {});
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: burger ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        'images/burger.png',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: burger ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
