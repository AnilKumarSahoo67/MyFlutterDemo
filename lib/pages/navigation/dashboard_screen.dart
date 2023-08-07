import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/MyRoutes.dart';
import 'package:flutter_application_1/widgets/dashboard/account_list.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/account_model.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width:
            MediaQuery.of(context).size.width, //// here to position the child
        child: Stack(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50))),
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
                child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Icon(Icons.person, color: Colors.blue),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "06,August 2023",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: GoogleFonts.lato().fontFamily,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "sahooanil@ybl",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: GoogleFonts.lato().fontFamily,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                )
                              ],
                            )
                          ]),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 250.0,
                              child: AccountList(list: AccountModel.accounts,)
                          ),
                          const SizedBox(height: 10,),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRouts.sendMoneyRoutes);
                            },
                            child: Container(
                              height: 70,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      bottomLeft: Radius.circular(35)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 5.0,
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  const SizedBox(width: 20.0,),
                                  Image.asset("assets/images/send-money.png",height: 35.0,width: 35.0,color: Colors.deepPurpleAccent,),
                                  const SizedBox(width: 10.0,),
                                  Text("Send Money", style: TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold,fontFamily: GoogleFonts.lato().fontFamily,fontSize: 17),),
                                  const SizedBox(width: 20,),
                                  const Icon(CupertinoIcons.arrow_right,color: Colors.deepPurpleAccent,)
                                ],
                              )
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Container(
                            height: 70,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    bottomLeft: Radius.circular(35)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5.0,
                                  )
                                ]),
                            child: Row(
                              children: [
                                const SizedBox(width: 20.0,),
                                Image.asset("assets/images/receive-money.png",height: 30.0,width: 30.0,color: Colors.deepPurpleAccent,),
                                const SizedBox(width: 10.0,),
                                Text("Receive Money", style: TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold,fontFamily: GoogleFonts.lato().fontFamily,fontSize: 17),),
                                const SizedBox(width: 20,),
                                const Icon(CupertinoIcons.arrow_right,color: Colors.deepPurpleAccent,)
                              ],
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Container(
                            height: 70,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    bottomLeft: Radius.circular(35)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5.0,
                                  )
                                ]),
                            child: Row(
                              children: [
                                const SizedBox(width: 20.0,),
                                Image.asset("assets/images/money-management.png",height: 25.0,width: 25.0,color: Colors.deepPurpleAccent,),
                                const SizedBox(width: 10.0,),
                                Text("Manage Money", style: TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold,fontFamily: GoogleFonts.lato().fontFamily,fontSize: 17),),
                                const SizedBox(width: 20,),
                                const Icon(CupertinoIcons.arrow_right,color: Colors.deepPurpleAccent,)
                              ],
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Container(
                            height: 70,
                            margin: EdgeInsets.only(bottom: 10.0),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    bottomLeft: Radius.circular(35)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5.0,
                                  )
                                ]),
                            child: Row(
                              children: [
                                const SizedBox(width: 20.0,),
                                Image.asset("assets/images/discount.png",height: 25.0,width: 25.0,color: Colors.deepPurpleAccent,),
                                const SizedBox(width: 10.0,),
                                Text("Offers", style: TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold,fontFamily: GoogleFonts.lato().fontFamily,fontSize: 17),),
                                const SizedBox(width: 20,),
                                const Icon(CupertinoIcons.arrow_right,color: Colors.deepPurpleAccent,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
