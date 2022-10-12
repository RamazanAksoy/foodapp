import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width;
    double uzunluk = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: genislik / 10 * 9,
      height: uzunluk / 10 * 0.75,
      child: Row(
        children: [
          Container(
            width: genislik / 10 * 7,
            height: uzunluk / 10 * 0.52,
            child: Material(
              elevation: 3,
              color: Colors.grey.shade100,
              shadowColor: Colors.grey.shade100,
              
              child: TextFormField(
                decoration: InputDecoration(
                        filled: true,
                  fillColor: Colors.white,
                  
                    focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      
                                                                  borderSide: BorderSide.none,

                    ),
                    prefixIcon: Icon(Icons.search_rounded,color: Color(0xff333333),),
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
