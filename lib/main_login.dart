import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Map<String, dynamic> _formData = {'email': null, 'password': null};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: AppBar(),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/login_background.png'),
                  fit: BoxFit.fill)),
          child: Stack(children: <Widget>[
            Positioned(
              top: 180,
              left: 36,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 8,
                  child: Container(
                      width: 310,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Center(
                              child: Text(
                                'LIGHT FOR LIFE',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto Pro',
                                    letterSpacing: 3,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 14),
                            child: Center(
                              child: Text(
                                'LOG IN HERE',
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto Pro',
                                    letterSpacing: 3,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Form(
                            key: _formkey,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 250,
                                  height: 50,
                                  child: TextFormField(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        letterSpacing: 3,
                                        fontSize: 17),
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: Colors.white,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      fillColor: Colors.blue,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          )),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              width: 0.0,
                                              style: BorderStyle.none,
                                              color: Colors.transparent)),
                                      hintText: 'email',
                                      contentPadding: EdgeInsets.only(
                                          top: 10,
                                          left: 5,
                                          right: 5,
                                          bottom: 10),
                                      hintStyle: TextStyle(
                                        color: Colors.white54,
                                      ),
                                    ),
                                    onSaved: (String value) {
                                      _formData['email'] = value;
                                    },
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return 'email must not be empty';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 250,
                                  height: 50,
                                  child: TextFormField(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        letterSpacing: 3,
                                        fontSize: 17),
                                    keyboardType: TextInputType.visiblePassword,
                                    cursorColor: Colors.white,
                                    textAlign: TextAlign.center,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      fillColor: Colors.blue,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          )),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              width: 0.0,
                                              style: BorderStyle.none,
                                              color: Colors.transparent)),
                                      hintText: 'password',
                                      contentPadding: EdgeInsets.only(
                                          top: 10,
                                          left: 5,
                                          right: 5,
                                          bottom: 10),
                                      hintStyle: TextStyle(
                                        color: Colors.white54,
                                      ),
                                    ),
                                    onSaved: (String value) {
                                      _formData['password'] = value;
                                    },
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return 'password must not be empty';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))),
            ),
            Positioned(
              top: 504,
              left: 168,
              child: Container(
                width: 57,
                height: 57,
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  elevation: 10,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    splashColor: Colors.black54,
                    onTap: () async {
                  /*    if (!_formkey.currentState.validate()) {
                        return;
                      }
                      _formkey.currentState.save();
                      AuthResult _result = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: _formData['email'],
                              password: _formData['password']);
                      if(_result.user.uid!=null){
                      }
                      */
                      Navigator.pushNamed(context, '/normal_startup');
                    },
                    child: Center(
                      child: Image.asset(
                        'images/mark_black.png',
                        height: 27,
                        width: 27,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 610,
              left: 60,
              child: Container(
                height: 40,
                width: 268,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/fblogo.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Log in with facebook',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          fontSize: 17,
                          fontFamily: 'Roboto Pro'),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 680,
              left: 50,
              child: Container(
                child: RichText(
                  text: TextSpan(
                      text: 'NEW TO LIFE FOR LIFE? ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto Pro',
                          letterSpacing: 3),
                      children: [
                        TextSpan(
                            text: 'REGISTER HERE',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/signup');
                              })
                      ]),
                ),
              ),
            )
          ]),
        ));
  }
}
