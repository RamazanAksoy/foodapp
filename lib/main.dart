import 'package:flutter/material.dart';
import 'package:foodapp/pages/splashscreen.dart';
import 'package:foodapp/restaurantlistitem.dart';

import 'button.dart';

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
      body: RestaurantListItem(
          imageUrl: "assets/restaurant2.png",
          restaurantName: "Burger King",
          rating: "4.5",
          hourTime: "25-35 mins",
          size: size,
          far: "8 km",
          newIs: true),
    );
  }
}
