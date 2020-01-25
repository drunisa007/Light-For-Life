import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:light_for_life/custom_icons/ic_icons_icons.dart';

class Class extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 3.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/class_bg.png'), fit: BoxFit.fill)),
          child: Stack(
            children: <Widget>[
              Container(
                child: Text(
                  'Hey, what would you like to learn today?',
                  style: TextStyle(
                      fontFamily: 'opensan',
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                      height: 1.7,
                      shadows: [Shadow(color: Colors.blue, blurRadius: 0.7)]),
                ),
                margin: EdgeInsets.only(left: 20, right: 50, top: 0),
              ),
              Container(
                height: 47,
                margin: EdgeInsets.only(left: 40, right: 40, top: 160),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      backgroundColor: Colors.transparent,
                      letterSpacing: 3,
                      fontSize: 15),
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  showCursor: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    fillColor: Colors.black.withOpacity(0.7),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.7), width: 0.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                            width: 0.0,
                            style: BorderStyle.none,
                            color: Colors.black.withOpacity(0.7))),
                    hintText: 'Seach Class Here',
                    contentPadding:
                        EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
              child: Stack(
            children: <Widget>[
              Container(
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage('images/class_robot.png'),
                        fit: BoxFit.fill)),
                margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.greenAccent,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amberAccent,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 60, left: 25, right: 25),
                      child: Text(
                        'Maching Learning and Data Science Class',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Roboto Pro',
                            color: Colors.black,
                            letterSpacing: 5,
                            height: 1.2,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 235,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.9)),
                margin: EdgeInsets.only(left: 55, right: 55, top: 135),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 8, left: 80, right: 80),
                      child: Text(
                        'NURA DEV',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Roboto Pro',
                            fontSize: 19,
                            letterSpacing: 5),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(IcIcons.time),
                            onPressed: () {},
                            iconSize: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Text(
                              '7 A.M TO 9 P.M, 4 P.M TO 6 P.M',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  letterSpacing: 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 62,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(IcIcons.date),
                            onPressed: () {},
                            iconSize: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Text(
                              'FROM 2-2-2020 TO 2-4-2020',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  letterSpacing: 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 94,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(IcIcons.location),
                            onPressed: () {},
                            iconSize: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Text(
                              '73*74 and 35 street,Mandalay',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  letterSpacing: 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 126,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(IcIcons.price),
                            onPressed: () {},
                            iconSize: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Text(
                              '180000 kyats',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  letterSpacing: 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 158,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 14, bottom: 14, left: 14, right: 10),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Text(
                              ' available seats',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  letterSpacing: 1),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 14, bottom: 14, left: 8, right: 10),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2),
                            child: Text(
                              'limited seats',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  letterSpacing: 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 181,
                      left: 47,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 14, bottom: 14, left: 4, right: 4),
                            height: 21,
                            width: 21,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/star.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 14, bottom: 14, left: 4, right: 4),
                            height: 21,
                            width: 21,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/star.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 14, bottom: 14, left: 4, right: 4),
                            height: 21,
                            width: 21,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/star.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 14, bottom: 14, left: 4, right: 4),
                            height: 21,
                            width: 21,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/star.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 14, bottom: 14, left: 4, right: 4),
                            height: 21,
                            width: 21,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/star.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 14, bottom: 14, left: 8, right: 4),
                            child: Center(
                              child: Text('5.0',style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontFamily: 'Roboto Pro',
                                letterSpacing: 3
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ],
    );
  }
}
