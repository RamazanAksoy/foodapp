import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width;
    double uzunluk = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: uzunluk / 10 * 2, left: 20),
      width: genislik / 10 * 9,
      height: uzunluk / 10 * 0.75,
      child: Row(
        children: [
          Container(
            width: genislik / 10 * 7,
            height: uzunluk / 10 * 0.5,
            child: Material(
              elevation: 2,
              shadowColor: Colors.grey.shade100,
              
              child: TextFormField(
                decoration: InputDecoration(
                  
                  fillColor: Colors.black,
                    focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,

                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                                                                  borderSide: BorderSide.none,

                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.search_rounded,color: Colors.black54,),
                    labelText: 'Search Your food or Restaurant',
                    labelStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5), fontSize: 13)),
              ),
            ),
          ),
          Container(   
child: Image.asset("assets/settings.png",fit: BoxFit.fitHeight,height: 80),)
        ],
      ),
    );
  }
}
