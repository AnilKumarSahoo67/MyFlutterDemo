import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/account_model.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountItmes extends StatelessWidget{
  final Accounts accounts;

  const AccountItmes({super.key, required this.accounts});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              accounts.accountNumber,
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
                      text: '\$ ${accounts.currentBalance}',
                      style: TextStyle(
                          fontWeight:
                          FontWeight.bold,
                          fontFamily:
                          GoogleFonts.lato()
                              .fontFamily,
                          color: Colors.black87,
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
    );
  }

}