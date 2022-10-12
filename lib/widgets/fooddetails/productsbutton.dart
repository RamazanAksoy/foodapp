import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsButton extends StatelessWidget {
  const ProductsButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 82,
      alignment: Alignment.center,
      height: 30,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
      child: Text(
        title,
        style: GoogleFonts.inter(color: Colors.black),
      ),
    );
  }
}
