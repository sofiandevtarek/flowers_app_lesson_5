import 'package:flowers/colors.dart';
import 'package:flowers/model/flowers.dart';
import 'package:flowers/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.product});
  final Flower product;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool lines = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: appbarGreen,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: whiteColor),
        ),
        title: CustomText(
          text: "Details",
          color: whiteColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.green[400],
                    child: CustomText(text: "8", color: whiteColor),
                  ),
                  SizedBox(height: 300),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart, color: whiteColor),
                  ),
                ],
              ),
              CustomText(text: "13", color: whiteColor),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(widget.product.image),
            SizedBox(height: 30),
            CustomText(text: "${widget.product.price}", fontSize: 25, fontWeight: FontWeight.bold),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CustomText(
                        text: "New",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.star, color: Colors.yellow, size: 25),
                    Icon(Icons.star, color: Colors.yellow, size: 25),
                    Icon(Icons.star, color: Colors.yellow, size: 25),
                    Icon(Icons.star, color: Colors.yellow, size: 25),
                    Icon(Icons.star, color: Colors.yellow, size: 25),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.edit_location),
                    CustomText(text: "Flower app", fontSize: 25),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: CustomText(
                  text: "Details",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text:
                    "Flowers, also known as blooms or blossoms, are the reproductive structures of flowering plants (angiosperms).",
                fontSize: 19,
                fontWeight: FontWeight.bold,
                maxLines: lines == false ? 2 : 3,
                overflow: TextOverflow.fade,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  lines = !lines;
                });
              },
              child: CustomText(
                text: lines == true ? "Show less" : "Show more",
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
