import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/themes.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding:const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 220,
                      width: 180,
                      margin: const EdgeInsets.only(
                          left: 10, right: 3, top: 10, bottom: 10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bank Account",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: GoogleFonts.lato()
                                      .fontFamily),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "1231 **** **** 8771",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  fontFamily:
                                  GoogleFonts.lato().fontFamily,
                                  color: Colors.black87),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: GoogleFonts.lato()
                                      .fontFamily),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context)
                                    .style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\$ 120,000',
                                      style: TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontFamily:
                                          GoogleFonts.lato()
                                              .fontFamily,
                                          fontSize: 20)),
                                ],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              "View Statement  >",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily:
                                  GoogleFonts.lato().fontFamily,
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      margin: const EdgeInsets.only(
                          left: 10, right: 3, top: 10, bottom: 10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bank Account",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: GoogleFonts.lato()
                                      .fontFamily),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "1231 **** **** 8771",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  fontFamily:
                                  GoogleFonts.lato().fontFamily,
                                  color: Colors.black87),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: GoogleFonts.lato()
                                      .fontFamily),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context)
                                    .style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\$ 120,000',
                                      style: TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontFamily:
                                          GoogleFonts.lato()
                                              .fontFamily,
                                          fontSize: 20)),
                                ],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              "View Statement  >",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily:
                                  GoogleFonts.lato().fontFamily,
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      margin: const EdgeInsets.only(
                          left: 10, right: 3, top: 10, bottom: 10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bank Account",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: GoogleFonts.lato()
                                      .fontFamily),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "1231 **** **** 8771",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  fontFamily:
                                  GoogleFonts.lato().fontFamily,
                                  color: Colors.black87),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: GoogleFonts.lato()
                                      .fontFamily),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context)
                                    .style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\$ 120,000',
                                      style: TextStyle(
                                          fontWeight:
                                          FontWeight.bold,
                                          fontFamily:
                                          GoogleFonts.lato()
                                              .fontFamily,
                                          fontSize: 20)),
                                ],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              "View Statement  >",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily:
                                  GoogleFonts.lato().fontFamily,
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
