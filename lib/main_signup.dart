import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Map<String, dynamic> _formData = {
    'email': null,
    'password': null,
    'repassword': null
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/login_background.png'), fit: BoxFit.fill)),
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
                    height: 380,
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
                              'SIGN UP HERE',
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
                                    hintText: 'comfirm password',
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
                                    _formData['repassword'] = value;
                                  },
                                  validator: (val) {
                                    if (val.isEmpty) {
                                      return 'comfirm password must not be empty';
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
            top: 534,
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
                  onTap: () {
                    _workingForSignUp();
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
            top: 680,
            left: 50,
            child: Container(
              child: RichText(
                text: TextSpan(
                    text: 'ALREADY HAVE ACCOUNT? ',
                    style: TextStyle(color: Colors.black,
                        fontFamily: 'Roboto Pro',
                        letterSpacing: 3
                    ),
                    children: [
                      TextSpan(
                          text: 'LOG IN HERE',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.pushNamed(context, '/');
                          })
                    ]),
              ),
            ),
          )

        ],),
      ),
    );
  }
  Future<void> _workingForSignUp() async {
    if (!_formkey.currentState.validate()) {
      return;
    }
    _formkey.currentState.save();
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: _formData['email'], password: _formData['password']);
   if(result.user.uid!=null){
     Future<FirebaseUser> user=_firebaseAuth.currentUser();
     user.then((value){
       if(result.user.uid==value.uid){
         Navigator.pop(context);
       }
     });

   }
  }

}

