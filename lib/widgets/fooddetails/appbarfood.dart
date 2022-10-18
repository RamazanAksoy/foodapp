import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appbarfood extends StatelessWidget {
  const Appbarfood({super.key, required this.imageurl});
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return    Container(
            width: double.infinity,
            height: 290,
            child: Stack(children: [
              Container(
                width: double.infinity,
                height: 288,
                color: Colors.black,
                child: Image.asset(imageurl),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 45),
                    child: Image.asset("assets/back.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 45),
                    child: Image.asset("assets/favori.png"),
                  ),
                ],
              )
            ]),
          );
  }
}