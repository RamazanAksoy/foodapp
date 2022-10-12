import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/appbar.dart';
import 'package:foodapp/categories.dart';
import 'package:foodapp/discount.dart';
import 'package:foodapp/restaurantlistitem.dart';
import 'package:foodapp/search.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List<Map<String, String>> categories = [
  {"name": "Pizza", "resimurl": "assets/background.png"},
  {"name": "Pizza", "resimurl": "assets/background.png"},
  {"name": "Pizza", "resimurl": "assets/background.png"},
  {"name": "Pizza", "resimurl": "assets/background.png"},
  {"name": "Pizza", "resimurl": "assets/background.png"},
  {"name": "Pizza", "resimurl": "assets/background.png"}
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        AppbarWidget(),
        SearchWidget(),
        DiscountWidget(
            size: size,
            title: "Get Special Discount",
            discounttext: "up to 75%",
            buttontitle: "Claim Voucher",
            resimurl: "assets/discount.png"),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Categories",
                    style: GoogleFonts.inter(
                        fontSize: 17.5,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff010E16)),
                  )),
              Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    "Show all",
                    style: GoogleFonts.inter(
                        color: Color(0xff459FCA), fontSize: 12),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategoriesWidget(
                  title: categories[index]['name'].toString(),
                  imageurl: categories[index]['resimurl'].toString(),
                  size: size);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Restaurant",
                    style: GoogleFonts.inter(
                        fontSize: 17.5,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff010E16)),
                  )),
              Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    "Show all",
                    style: GoogleFonts.inter(
                        color: Color(0xff459FCA), fontSize: 12),
                  ))
            ],
          ),
        ),

 SizedBox(
  height: 292,
          child: ListView.builder(
                        padding: EdgeInsets.only(top: 4),

            itemCount: categories.length,
            itemBuilder: (context, index) {
              return RestaurantListItem(size: size, imageUrl: "assets/restaurant1.png", restaurantName: "Burger King", rating: "4.5", hourTime: "25-35 mins", far: "8 km", newIs: true);
            },
          ),
        ),


      ]),
    );
  }
}
