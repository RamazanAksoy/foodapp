import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantListItem extends StatelessWidget {
  const RestaurantListItem(
      {super.key,
      required this.size,
      required this.imageUrl,
      required this.restaurantName,
      required this.rating,
      required this.hourTime,
      required this.far,
      required this.newIs});
  final String imageUrl;
  final String restaurantName;
  final String rating;
  final String hourTime;
  final String far;
  final bool newIs;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height / 10 * 1.25,
      margin: EdgeInsets.symmetric(
          horizontal: size.width / 10 * 0.5, vertical: size.height / 10 * 0.5),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.12),
          spreadRadius: 1,
          blurRadius: 20,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: size.width / 10 * 2.5,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(imageUrl), fit: BoxFit.fitHeight),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: size.width / 10 * 4.6,
          padding: EdgeInsets.only(left: size.width / 10 * 0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    restaurantName,
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Color(0xff010E16),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFFD600),
                        size: 19,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        rating,
                        style: GoogleFonts.inter(
                            color: Color(0xffB3B3B3),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Color(0xffB3B3B3),
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    hourTime,
                    style: GoogleFonts.inter(
                        fontSize: 13.57, color: Color(0xffB3B3B3)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/ellipse.png")),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "" + far,
                    style: GoogleFonts.inter(
                        fontSize: 13.57, color: Color(0xffB3B3B3)),
                  )
                ],
              )
            ],
          ),
        ),
       newIs? Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: size.width / 10 * 0.4),
          width: size.width / 10 * 1.5,
          height: size.height / 10 * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: Colors.black),
          child: Text(
            "New",
            style: GoogleFonts.inter(
                fontSize: 13.5, color: Colors.white, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        )
     :Container() ]),
    );
  }
}
