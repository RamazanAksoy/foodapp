import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
                  color: Colors.black,
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.fitWidth,alignment: Alignment.topCenter)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,children: [
          Container(
            width: size.width,
            margin: EdgeInsets.only(left: 15),
            child: Text(
              "Lorem ipsum\ndolor sit amet,\nnconsectetur\nadipiscing elit.",textAlign: TextAlign.start,
              style: GoogleFonts.inriaSerif(
                  fontSize: 39, fontWeight: FontWeight.bold,color: Color(0xffF5F5F5)),
            ),
          ),
          SizedBox(height: size.height/10*0.5,),
          ButtonWidget(
            size: size,
            text: "Login",
          ),
          SizedBox(height: size.height/10*0.25,)
,
          Text(
            "Don’t have an account? ",
            style: GoogleFonts.inder(fontSize: 15, color: Color(0xff375268)),
          ),
      Text("Create account",
                      style: GoogleFonts.inder(fontSize: 15, color: Color(0xffD9D9D9)),
)
,
SizedBox(height: size.height/10*0.5,)
        ]),
      ),
    );
  }
}
