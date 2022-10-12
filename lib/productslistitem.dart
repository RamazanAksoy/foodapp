import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsListItem extends StatelessWidget {
  const ProductsListItem({super.key, required this.size, required this.urunAdi, required this.urunAciklama, required this.resim, required this.derece, required this.fiyat});
  final Size size;
  final String urunAdi;
final String urunAciklama;
final String resim;
final String derece;
final String fiyat;

  @override
  Widget build(BuildContext context) {
    return Container(
                            width: size.width,
                            height: size.height / 10 * 1.25,
                            margin: EdgeInsets.only(
                                right: 15, bottom: size.height / 10 * 0.2),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.12),
                                    spreadRadius: 1,
                                    blurRadius: 20,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width / 10 * 2.5,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      image: DecorationImage(
                                          image: AssetImage(resim),
                                          fit: BoxFit.fitHeight),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Container(
                                    width: size.width / 10 * 4.5,
                                    padding: EdgeInsets.only(
                                        left: size.width / 10 * 0.3),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  urunAdi,
                                                  style: GoogleFonts.inter(
                                                      fontSize: 14,
                                                      color: Color(0xff010E16),
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFD600),
                                                  size: 14,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  derece,
                                                  style: GoogleFonts.inder(
                                                      fontSize: 13,
                                                      color: Color(0xffB3B3B3)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Text(
                                              urunAciklama,                                              style: GoogleFonts.inter(
                                                  color: Color(0xff9B9B9B),
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          fiyat,
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 80,
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                                      Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 0.2,
                                            blurRadius: 17,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ], color: Colors.white),
                                        width: 25,
                                        height: 25,
                                        child: Text(
                                          "-",
                                          style:
                                              GoogleFonts.inter(fontSize: 20),
                                        ),
                                        
                                      )
                                      ,
                                      Text("1",style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.bold),)
                                     ,  Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 0.2,
                                            blurRadius: 17,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ], color: Colors.white),
                                        width: 25,
                                        height: 25,
                                        child: Text(
                                          "+",
                                          style:
                                              GoogleFonts.inter(fontSize: 20),
                                        ),
                                      )
                                    ]),
                                  )
                                ]),
                          );
  }
}