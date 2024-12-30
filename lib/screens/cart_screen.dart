// lib/screens/cart_screen.dart
import 'package:e_commerce_shopping_app2/widgets/cart_item_samples.dart';

import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 22,
                      ),
                    ), // InkWell
                    Text(
                      "Cart",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ), // Text
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.more_horiz,
                        size: 30,
                      ),
                    ), // InkWell
                  ],
                ),
              ), // Padding
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    CartItemSamples(), // Make sure to define this method or widget.
                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Select All", style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500,
                          ),//textstyle
                          ),//text
                          Checkbox(
                            activeColor: Color(0xFFFd725A),
                            value: true, 
                            onChanged: (value){},
                          ), //checkbox
                        ],
                        ),
                    ),
                    SizedBox(height : 15),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child:          Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Delivery Cost:", style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w600,
                   color: Colors.black.withOpacity(0.8),
                 ),
                 ),
                 Text("\$50", style: TextStyle(
                   color: Color(0xFFFD725A),
                   fontSize: 20,
                   fontWeight: FontWeight.w600,
                 ),
                 ),
               ],
                ), //Row
             ), 
             SizedBox(height: 15),
             //Padding
             Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child:          Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Total Payment:", style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(0.8),
                 ),
                 ),
                 Text(
                  "\$950.54", style: TextStyle(
                   color: Color(0xFFFD725A),
                   fontSize: 20,
                   fontWeight: FontWeight.w600,
                 ),
                 ),
               ],
                ), //Row
             ),//Padding 
                SizedBox(height: 30),
                             InkWell(
                 onTap: () {
                 Navigator.pushNamed(context, '/checkout_screen');
                 },
               child: Container(
                 padding: EdgeInsets.symmetric(vertical: 20,horizontal: 130),
                 decoration: BoxDecoration(
                   color: Color(0xFFFD725A),
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: Text("Checkout", style: TextStyle(
                   fontSize: 17,
                   fontWeight: FontWeight.w600,
letterSpacing: 1,
                   color: Colors.white.withOpacity(0.9),
                 ),),
               ),
             ),

                  ],
                ), // Column
              ), // Container
            ],
          ), // Column

        ), // SafeArea
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
