import 'package:apna_food/pages/bottomnav.dart';
import 'package:apna_food/widgets/widget_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool burger = false, icecream = false, pizza = false, curry = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(
        top: 50,
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello Avirup",
                style: appwidget.boldtextfieldstyle(),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Delicious Food!",
            style: appwidget.headlinetextfieldstyle(),
          ),
          Text(
            "Get Tasty foods in minutes!",
            style: appwidget.lighttextstyle(),
          ),
          SizedBox(
            height: 20,
          ),
          showItems(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/chicken2.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Chicken Butter Masala",
                            style: appwidget.semiboldtextstyle(),
                          ),
                          Text(
                            "Buttery Perfection",
                            style: appwidget.lighttextstyle(),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "225/-",
                            style: appwidget
                                .semiboldtextstyle()
                                .copyWith(color: Colors.green, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  padding: EdgeInsets.all(13),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/momos.png",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Chicken Steamed Momo",
                            style: appwidget.semiboldtextstyle(),
                          ),
                          Text(
                            "Hot steamed fresh",
                            style: appwidget.lighttextstyle(),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "175/-",
                            style: appwidget
                                .semiboldtextstyle()
                                .copyWith(color: Colors.green, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(13),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/biryani.png",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Chicken Dum Biryani",
                              style: appwidget.semiboldtextstyle(),
                            ),
                            Text(
                              "Satisfy your cravings",
                              style: appwidget.lighttextstyle(),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "245/-",
                              style: appwidget
                                  .semiboldtextstyle()
                                  .copyWith(color: Colors.green, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget showItems() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            burger = true;
            curry = false;
            pizza = false;
            icecream = false;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                color: burger ? Colors.green[100] : Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/burger.jpg",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 22,
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            curry = true;
            pizza = false;
            icecream = false;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: curry ? Colors.green[100] : Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/curry.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 22,
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            curry = false;
            pizza = true;
            icecream = false;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.green[100] : Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/pizza.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 22,
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            curry = false;
            pizza = false;
            icecream = true;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: icecream ? Colors.green[100] : Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/icecream.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
