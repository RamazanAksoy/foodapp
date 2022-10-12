import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/widgets/fooddetails/appbarfood.dart';
import 'package:foodapp/widgets/fooddetails/productsbutton.dart';
import 'package:foodapp/widgets/fooddetails/productslistitem.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
       Appbarfood(imageurl: "assets/rr.png"),
          Container(
            margin: EdgeInsets.only(top: 260),
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Burger King",
                        style: GoogleFonts.inter(
                            fontSize: 19, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFFD600),
                          size: 18,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "4.5",
                          style: GoogleFonts.inder(
                              fontSize: 15, color: Color(0xffB3B3B3)),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.access_time,
                          color: Color(0xff9B9B9B),
                          size: 18,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "25-35 mins",
                          style: GoogleFonts.inder(
                              fontSize: 15, color: Color(0xffB3B3B3)),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset(
                          "assets/ellipse.png",
                          height: 18,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "8 km",
                          style: GoogleFonts.inder(
                              fontSize: 15, color: Color(0xffB3B3B3)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 28,
                      child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProductsButton( title: "Burger",);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 425,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return ProductsListItem(size: size, urunAdi: "ChickenBurger", urunAciklama: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  ", resim: "assets/rr.png", derece: "4.5", fiyat: "5 TL");
                        },
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}