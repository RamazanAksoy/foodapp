import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {super.key,
      required this.title,
      required this.imageurl,
      required this.size});

  final String title;
  final String imageurl;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width/10*0.25),
    child: Column(
        children: [
          Container(
            width: size.width / 10 *1.4,
            height: size.width / 10 * 1.4,
            decoration: BoxDecoration(            color: Colors.red,

                borderRadius: BorderRadius.circular(800),
                image: DecorationImage(image: AssetImage(imageurl),fit: BoxFit.cover)),
          ),
          SizedBox(height: 4,),
          Text(
            title,
            style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 13, color: Color(0xff010E16)),
          )
        ],
      ),
    );
  }
}
