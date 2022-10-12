import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.size, required this.text});

  final String text;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {
        
      },
      child: Container(
        width: size.width,
        height: size.height/10*0.8,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: size.width/10*1,vertical: size.height/10*0.2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width/10*0.4),
            border: Border.all(color: Color(0xff314B61), width: 1)),
            child: Text(text,style:GoogleFonts.inriaSerif(color: Colors.white,letterSpacing: 1,fontSize: 22)),
      ),
    );
  }
}
