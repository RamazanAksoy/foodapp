import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget(
      {super.key,
      required this.size,
      required this.title,
      required this.discounttext,
      required this.buttontitle,
      required this.resimurl});
  final Size size;
  final String title;
  final String discounttext;
  final String buttontitle;
  final String resimurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: size.width/10*0.5,vertical: size.height/10*0.5),
      height: size.height / 10 * 2,
      padding: EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image:
              DecorationImage(image: AssetImage(resimurl), fit: BoxFit.cover)),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,children: [
        Text(
          title,
          style: GoogleFonts.inter(fontSize: 16, color: Color(0xff9B9B9B)),
        ),
        Text(
          discounttext,
          style: GoogleFonts.inriaSerif(
              fontSize: 35,
              color: Color(0xffF5F5F5),
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: size.width / 10 * 2.9,
          height: size.height/10*0.37,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Text(buttontitle,style: GoogleFonts.inter(fontSize: 12,color: Color(0xff010E16),fontWeight: FontWeight.w500)),
        )
      ]),
    );
  }
}
