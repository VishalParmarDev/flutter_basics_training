import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sport_game/forgot_password.dart';
import 'package:sport_game/sign_up_screen.dart';

import 'login_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
/*  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }*/

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "http://sfwallpaper.com/images/hd-wallpapers-for-android-phones-free-download-21.jpg"))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20.0, 0, 10.0),
                            child: Text(
                              "Fitness Sports App",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 30.0),
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://d1nhio0ox7pgb.cloudfront.net/_img/i_collection_png/256x256/plain/soccer_ball.png"))),
                            margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 6.0),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                            child: TextButton(
                              child: Text("Log In"),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(
                                          vertical: 13, horizontal: 60)),
                                  textStyle: MaterialStateProperty.all(
                                      TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.fromLTRB(20.0, 5, 20.0, 2.0),
                            child: TextButton(
                              child: Text("Sign Up"),
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      width: 1, color: Colors.white)),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(
                                          vertical: 13, horizontal: 50)),
                                  textStyle: MaterialStateProperty.all(
                                      TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()));
                              },
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.fromLTRB(20.0, 2.0, 20.0, 54),
                            child: TextButton(
                              child: Text("Forgot password?"),
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      width: 1, color: Colors.transparent)),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(
                                          vertical: 13, horizontal: 50)),
                                  textStyle: MaterialStateProperty.all(
                                      TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold))),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPassword()));
                              },
                            ),
                          )
                        ],
                      ))),
            )));
  }

  Future<bool?> onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: Text("NO"),
          ),
          new GestureDetector(
            onTap: () => Navigator.of(context).pop(true),
            child:Text("Yes"),
          ),
        ],
      ),
    );
  }
}
