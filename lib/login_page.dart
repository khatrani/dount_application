import 'package:dount_application/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  bool ispasshide = true;
  // var isEmpty;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.only(top: 140),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        width: double.infinity,
                        child: Text(
                          "Username",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          // initialValue: "Reshma",
                          validator: (value) {
                            if (value.isEmpty) {
                              return "User name is not righth";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Type your usrename",
                            prefixIcon: Icon(Icons.person_outline_outlined),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        width: double.infinity,
                        child: Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          // initialValue: "Reshma",
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Password is not correct";
                            }
                            return null;
                          },
                          obscureText: ispasshide,
                          decoration: InputDecoration(
                            hintText: "Type your password",
                            prefixIcon: Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              icon: Icon(ispasshide
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  ispasshide = !ispasshide;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 40),
                        child: Text("Forget password?"),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (formkey.currentState.validate()) {
                            Navigator.pushNamed(context, Routes.deshboard);
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              left: 30, right: 30, top: 15, bottom: 15),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            gradient: LinearGradient(
                              colors: [
                                Colors.cyan,
                                Colors.deepPurpleAccent.shade100,
                                Colors.pink
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Or Sign Up Using",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.facebook_outlined,
                              color: Colors.blue.shade900,
                              size: 50,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 50,
                            child: Image.asset(
                              "assets/images/twitter.png",
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            height: 50,
                            child: Image.asset(
                              "assets/images/google.png",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          "Or Sign Up Using",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: TextButton(
                              onPressed: () => AlertDialog(),
                              child: Text("sss"))
                          // Text(
                          //   "SIGN UP",

                          //   style: TextStyle(
                          //       fontSize: 15, fontWeight: FontWeight.w600),
                          // ),
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
