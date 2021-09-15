import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpForm();
  }
}

class SignUpForm extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedDate = DateTime.now();
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30.0),
                          child: Text(
                            "Create New Account",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 50.0,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
                                child: Text(
                                  "NAME",
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
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter your name',
                                    hintStyle: TextStyle(
                                        fontSize: 20.0, color: Colors.white)),
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                textAlign: TextAlign.start)),
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
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
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
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
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
                                obscureText: true,
                                enableSuggestions: false,
                                obscuringCharacter: "*",
                                autocorrect: false,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  hintText: 'Enter your password',
                                  hintStyle: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.done,
                                textAlign: TextAlign.start)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                                child: Text(
                                  "DOB",
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                            onSaved: (val) {
                              selectedDate;
                            },
                            controller: _dateController,
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter your Birthdate",
                              hintStyle: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            validator: (value) {
                              if (value!.isEmpty)
                                return "Please enter  your birthdate";
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30.0),
                          child: TextButton(
                            child: Text("Sign Up"),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 13, horizontal: 60)),
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
}
