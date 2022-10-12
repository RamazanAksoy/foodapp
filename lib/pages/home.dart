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
  {"name": "Pizza", "resimurl": "assets/categories1.jpg"},
  {"name": "Pan-cake", "resimurl": "assets/categories2.jpg"},
  {"name": "Sandwich", "resimurl": "assets/categories3.jpg"},
  {"name": "Ice-cream", "resimurl": "assets/categories4.jpg"},
  {"name": "Noodle", "resimurl": "assets/categories5.jpg"},
  {"name": "Coffe", "resimurl": "assets/categories6.jpg"}
];

List<Map<String, dynamic>> restaurantlist = [
  {
    "restaurantName": "Burger King",
    "resimurl": "assets/restaurant1.png",
    "rating": "4.5",
    "hourTime": "25-35 mibs",
    "far": "8 km",
    "newIs": true
  },
  {
    "restaurantName": "Pizzania",
    "resimurl": "assets/restaurant2.png",
    "rating": "4.6",
    "hourTime": "20-25 mins",
    "far": "7 km",
    "newIs": false
  },
  {
    "restaurantName": "Pankcake",
    "resimurl": "assets/restaurant3.png",
    "rating": "4.2",
    "hourTime": "25-35 mins",
    "far": "7 km",
    "newIs": true
  },
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          AppbarWidget(),
          SearchWidget(),
          DiscountWidget(
              size: size,
              title: "Get Special Discount",
              discounttext: "up to 75%",
              buttontitle: "Claim Voucher",
              resimurl: "assets/discount.png"),
          Padding(
            padding: const EdgeInsets.only(top:7,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.inter(
                          fontSize: 17,
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
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "Restaurant",
                      style: GoogleFonts.inter(
                          fontSize: 17,
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
              padding: EdgeInsets.only(top: 1),
              itemCount: restaurantlist.length,
              itemBuilder: (context, index) {
                return RestaurantListItem(
                    size: size,
                    imageUrl: restaurantlist[index]['resimurl'].toString(),
                    restaurantName: restaurantlist[index]['restaurantName'].toString(),
                    rating: restaurantlist[index]['rating'].toString(),
                    hourTime: restaurantlist[index]['hourTime'].toString(),
                    far: restaurantlist[index]['far'].toString(),
                    newIs: restaurantlist[index]['newIs']);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
