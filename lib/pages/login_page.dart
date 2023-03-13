import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  String userName = "";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image2.png",
                fit: BoxFit.cover,
                alignment: Alignment.center,
                height: 300,
              ),
              "Welcome $name".text.xl2.uppercase.bold.make().py16(),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username*",
                          icon: Icon(CupertinoIcons.person),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.indigo, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can not be empty";
                        }
                        userName = value;
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ).py12(),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password*",
                          icon: Icon(CupertinoIcons.lock),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.indigo, width: 2.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can not be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      color: context.theme.buttonColor,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 25 : 6),
                      child: InkWell(
                        onTap: () => navigateToNext(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,
                          // ),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void navigateToNext(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      saveUserData();
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
      setState(() {
        changeButton = false;
      });
    }
  }

  void saveUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(Constants.userName, userName);
    sharedPreferences.setBool(Constants.isLogin, true);
  }
}
