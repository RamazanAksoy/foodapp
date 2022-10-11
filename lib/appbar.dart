import 'package:flutter/material.dart';


class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width;
    double uzunluk = MediaQuery.of(context).size.height;
    return SafeArea(
      top: true,
      child: Container(
        margin: EdgeInsets.only(top: uzunluk / 10 * 0.3),
        width: genislik,
        height: uzunluk / 10 * 0.6,
        child: Row(children: [
          Column(
            children: [
              Container(
                width: genislik / 10 * 5.3,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: genislik / 10 * 0.3),
                child: Text(
                  "Hi Noha!",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Color(0xff035176),
                    size: 16,
                  ),
                  Text(
                    "Location, Main City-Napgur",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 14),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 18,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ]),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: uzunluk,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 7,right: genislik / 10 * 0.3),
                  height: 30,
                  width: 55,
                  child: Image.asset("assets/bildirim.png"),
                ),
                Positioned(
                  right: genislik / 10 * 0.3,
                  child: Container(
                    width: genislik / 10 * 0.4,
                    height: uzunluk / 10 * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text(
                      "5",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
