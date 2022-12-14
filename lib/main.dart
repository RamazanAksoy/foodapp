import 'package:flutter/material.dart';
import 'package:foodapp/pages/fooddetails.dart';
import 'package:foodapp/pages/home.dart';
import 'package:foodapp/pages/splashscreen.dart';
import 'package:foodapp/widgets/home/restaurantlistitem.dart';

import 'widgets/home/appbar.dart';
import 'widgets/splash/button.dart';
import 'widgets/home/categories.dart';

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
      home: const FoodDetailsScreen(),
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
    return Scaffold(backgroundColor: Colors.white,body: CategoriesWidget( size: size,title: "Pizza",imageurl: "assets/categories1.png"),
    );
  }
}
