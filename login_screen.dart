import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late FocusNode myFocusNode;
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    alignment: Alignment.topLeft,
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    tooltip: 'press to exit',
                    onPressed: () {
                      exit(0);
                    },
                  )
                ])),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                          child: Text(
                            "Log In",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 60.0,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10.0, 0, 30.0),
                          child: Text(
                            "Enter Your Details",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                                fontSize: 20.0,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                                child: Text(
                                  "EMAIL",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white70,
                                      fontSize: 18.0,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            ]),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                            child: TextField(
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                                autofocus: true,
                                cursorColor: Colors.white70,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    /*  disabledBorder: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(),
                                    focusedErrorBorder: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(),
                                    errorBorder: OutlineInputBorder(),*/
                                    hintText: 'Enter your email',
                                    hintStyle: TextStyle(
                                        fontSize: 20.0, color: Colors.white)),
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                textAlign: TextAlign.start)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                                child: Text(
                                  "PASSWORD",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            ]),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                            child: TextFormField(
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                                autofocus: true,
                                obscureText: true,
                                enableSuggestions: false,
                                obscuringCharacter: "*",
                                autocorrect: false,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  /* disabledBorder: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),

                                  focusedErrorBorder: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                  errorBorder: OutlineInputBorder(),*/
                                  hintText: 'Enter your password',
                                  hintStyle: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.done,
                                textAlign: TextAlign.start)),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30.0),
                          child: TextButton(
                            child: Text("Log In"),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 70)),
                                textStyle: MaterialStateProperty.all(TextStyle(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                                height: 24.0,
                                width: 24.0,
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.call,
                                    color: Colors.white,
                                  ),
                                  tooltip: 'press to exit',
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pop(context);
                                      //     _makePhoneCall('tel:+919173769719');
                                    });
                                  },
                                )),
                            Container(
                                height: 24.0,
                                width: 24.0,
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.facebook_sharp,
                                    color: Colors.white,
                                  ),
                                  tooltip: 'press to exit',
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pop(context);
                                      //_openUrl("https://www.facebook.com/login/");
                                    });
                                  },
                                )),
                            Container(
                                height: 24.0,
                                width: 24.0,
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.cloud_circle_sharp,
                                    color: Colors.white,
                                  ),
                                  tooltip: 'press to exit',
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pop(context);
                                      //_openUrl("https://www.google.com/");
                                    });
                                  },
                                )),
                            Container(
                                height: 24.0,
                                width: 24.0,
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.supervised_user_circle_sharp,
                                    color: Colors.white,
                                  ),
                                  tooltip: 'press to exit',
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pop(context);
                                      //_openUrl("https://console.firebase.google.com/");
                                    });
                                  },
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ),
        ));
  }

  /* Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }*/
}
