import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/navigation/dashboard_screen.dart';
import 'package:flutter_application_1/pages/navigation/home_screen.dart';
import 'package:flutter_application_1/pages/navigation/notification_screen.dart';
import 'package:flutter_application_1/pages/navigation/profile_screen.dart';
import 'package:flutter_application_1/pages/navigation/search_screen.dart';
import 'package:flutter_application_1/utils/MyRoutes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index  = 0;
  static const _buildBody = <Widget> [HomeScreen(),SearchScreen(),DashboardScreen(),NotificationScreen(),ProfileScreen()];
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: bottomNavigation(),
      backgroundColor: context.canvasColor,
      body: IndexedStack(index: index,children: _buildBody),
      drawer: const MyDrawer(),
    );
  }




  Widget? bottomNavigation(){
    return SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          // margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, blurRadius: 15.0, offset: Offset(5.0, 5.0))
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      children: [
                        Icon(
                          Icons.home_rounded,
                          color: (index == 0)
                              ? Colors.deepPurpleAccent
                              : Colors.black54,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: (index == 0)
                                  ? Colors.deepPurpleAccent
                                  : Colors.black54,
                              fontFamily: GoogleFonts.lato().fontFamily),
                        )
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: SizedBox(
                    height: 50,
                    width: 75,
                    child: Column(
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: (index == 1)
                              ? Colors.deepPurpleAccent
                              : Colors.black54,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                              color: (index == 1)
                                  ? Colors.deepPurpleAccent
                                  : Colors.black54,
                              fontFamily: GoogleFonts.lato().fontFamily),
                        )
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: SizedBox(
                    height: 50,
                    width: 75,
                    child: Column(
                      children: [
                        Icon(
                          Icons.dashboard_rounded,
                          color: (index == 2)
                              ? Colors.deepPurpleAccent
                              : Colors.black54,
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              color: (index == 2)
                                  ? Colors.deepPurpleAccent
                                  : Colors.black54,
                              fontFamily: GoogleFonts.lato().fontFamily),
                        )
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: SizedBox(
                    height: 50,
                    width: 75,
                    child: Column(
                      children: [
                        Icon(
                          Icons.notifications_rounded,
                          color: (index == 3)
                              ? Colors.deepPurpleAccent
                              : Colors.black54,
                        ),
                        Text(
                          "Notification",
                          style: TextStyle(
                              color: (index == 3)
                                  ? Colors.deepPurpleAccent
                                  : Colors.black54,
                              fontFamily: GoogleFonts.lato().fontFamily),
                        )
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      children: [
                        Icon(
                          Icons.person_rounded,
                          color: (index == 4)
                              ? Colors.deepPurpleAccent
                              : Colors.black54,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: (index == 4)
                                  ? Colors.deepPurpleAccent
                                  : Colors.black54,
                              fontFamily: GoogleFonts.lato().fontFamily),
                        )
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}

class _BottomNavigation extends StatefulWidget {
  @override
  State<_BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<_BottomNavigation> {
  int selectedPosition = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.all(12),
      // margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey, blurRadius: 15.0, offset: Offset(5.0, 5.0))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                selectedPosition = 0;
              });
            },
            child: SizedBox(
                height: 50,
                width: 50,
                child: Column(
                  children: [
                    Icon(
                      Icons.home_rounded,
                      color: (selectedPosition == 0)
                          ? Colors.orange
                          : Colors.black,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: (selectedPosition == 0)
                              ? Colors.orange
                              : Colors.black,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedPosition = 1;
              });
            },
            child: SizedBox(
                height: 50,
                width: 75,
                child: Column(
                  children: [
                    Icon(
                      Icons.dashboard_rounded,
                      color: (selectedPosition == 1)
                          ? Colors.orange
                          : Colors.black,
                    ),
                    Text(
                      "Dashboard",
                      style: TextStyle(
                          color: (selectedPosition == 1)
                              ? Colors.orange
                              : Colors.black,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedPosition = 2;
              });
            },
            child: SizedBox(
                height: 50,
                width: 75,
                child: Column(
                  children: [
                    Icon(
                      Icons.notifications_rounded,
                      color: (selectedPosition == 2)
                          ? Colors.orange
                          : Colors.black,
                    ),
                    Text(
                      "Notification",
                      style: TextStyle(
                          color: (selectedPosition == 2)
                              ? Colors.orange
                              : Colors.black,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedPosition = 3;
              });
            },
            child: SizedBox(
                height: 50,
                width: 50,
                child: Column(
                  children: [
                    Icon(
                      Icons.person_rounded,
                      color: (selectedPosition == 3)
                          ? Colors.orange
                          : Colors.black,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: (selectedPosition == 3)
                              ? Colors.orange
                              : Colors.black,
                          fontFamily: GoogleFonts.lato().fontFamily),
                    )
                  ],
                )),
          )
        ],
      ),
    ));
  }
}
