import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String imageUrl =
      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202211/untitled-1_0-one_one.jpg?VersionId=2UvgyBhEFLLMzztCbeFTTShGb9c33ddU";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15.0,
                      spreadRadius: 5.0,
                      offset: Offset(5.0, 5.0)
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                      maxRadius: 50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Anil Kumar Sahoo".toUpperCase(),
                      style: TextStyle(
                          color: MyThemes.darkBluishColor,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "sahooanilkumar@gmail.com".toLowerCase(),
                      style: TextStyle(
                          color: MyThemes.darkBluishColor,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "7978598054".toLowerCase(),
                      style: TextStyle(
                          color: MyThemes.darkBluishColor,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
