import 'package:apna_food/widgets/widget_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Image.asset(
                "assets/images/chicken1.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Have it now!",
                      style: appwidget.semiboldtextstyle(),
                    ),
                    Text(
                      "Chicken Butter Masala",
                      style: appwidget.boldtextfieldstyle(),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (a > 1) {
                          --a;
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      a.toString(),
                      style: appwidget.semiboldtextstyle(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        ++a;
                        setState(() {});
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Chicken Butter Masala is a classic Indian dish that is beloved by people all over the world. It is made with tender chicken simmered in a creamy tomato-based sauce. The sauce is made with butter, tomatoes, onions, garlic, ginger, and a blend of spices.",
              textAlign: TextAlign.justify,
              style: appwidget.lighttextstyle(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time ",
                  style: appwidget.semiboldtextstyle(),
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black38,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "30 min ",
                  style: appwidget
                      .semiboldtextstyle()
                      .copyWith(color: Color.fromARGB(255, 13, 29, 130)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
