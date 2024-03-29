import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/widgets/themes.dart';
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
  String password = "";
  String inputText = "";
  bool isToggleEye = true;
  final _controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    Container(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        controller: _controller,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            labelText: "Username*",
                            hintText: "Enter username",
                            prefixIcon: const Icon(CupertinoIcons.person_fill,
                                color: Color(0xff403b58)),
                            suffixIcon: hidingIcon()),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can not be empty";
                          }
                          userName = value;
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        obscureText: isToggleEye,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          labelText: "Password*",
                          hintText: "Enter password",
                          prefixIcon: const Icon(
                            CupertinoIcons.lock_fill,
                            color: Color(0xff403b58),
                          ),
                          suffixIcon: textObsecureIcon(),
                        ),
                        onChanged: (value) {
                          password = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can not be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          password = value;
                          return null;
                        },
                      ),
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
      await Navigator.pushReplacement(
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

  Widget? hidingIcon() {
    if (name.isNotEmpty) {
      return InkWell(
        onTap: () {
          userName = "";
          _controller.clear();
        },
        child: const Icon(
          Icons.clear,
          color: Colors.grey,
          size: 18.0,
        ),
      );
    } else {
      return null;
    }
  }

  Widget? textObsecureIcon() {
    if (isToggleEye) {
      if (password.isNotEmpty) {
        return InkWell(
          onTap: () {
            isToggleEye = false;
            setState(() {});
          },
          child: const Icon(
            Icons.remove_red_eye,
            color: Colors.grey,
            size: 18.0,
          ),
        );
      } else {
        return null;
      }
    } else {
      return InkWell(
        onTap: () {
          isToggleEye = true;
          setState(() {});
        },
        child: const Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.grey,
          size: 18.0,
        ),
      );
    }
  }
}
