import 'package:flutter/material.dart';
import 'package:foodapp/pages/splashscreen.dart';

import 'button.dart';
import 'discount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: DiscountWidget(
          size: size,
          resimurl: "assets/discount.png",
          buttontitle: "Claim Voucher",
          title: "Get Special Discount",
          discounttext: "up to 75%"),
    );
  }
}
