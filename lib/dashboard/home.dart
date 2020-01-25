import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 4,
                    margin: EdgeInsets.only(top: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            padding: EdgeInsets.only(top: 5, left: 7),
                            icon: Icon(Icons.search),
                            onPressed: () {},
                          ),
                          Container(
                            child: Text(
                              'Search (classees,courses,articles)',
                              style: TextStyle(
                                  color: Colors.grey,
                                  letterSpacing: 1.5,
                                  fontFamily: 'Roboto Pro'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 17, left: 5, right: 5),
                    height: 160,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return new Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/light-for-life-225a8.appspot.com/o/how-to-facebook-ads-limited-time-offers-800%402x.png?alt=media&token=b5d08711-db60-4860-9018-46cfd279523a",
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: 3,
                      pagination: new SwiperPagination(),
                      control: new SwiperControl(color: Colors.white, size: 25),
                      autoplay: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'images/home/myclass.png',
                                    height: 35,
                                    width: 35,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'my class',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto Pro',
                                    color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'images/home/courses.png',
                                    height: 30,
                                    width: 35,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'courses',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto Pro',
                                    color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'images/home/bookstore.png',
                                    height: 35,
                                    width: 35,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'book store',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto Pro',
                                    color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'images/home/saved.png',
                                    height: 30,
                                    width: 23,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'saved',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto Pro',
                                    color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment(-1, 0),
                    margin: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                    child: Text(
                      'Popular Class and Course',
                      style: TextStyle(
                          fontFamily: 'Roboto Pro',
                          letterSpacing: 4,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: new BoxConstraints(
                      minHeight: 150,
                      maxHeight: 220,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 180,
                          child: Card(
                            semanticContainer: true,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/design_bgone.jpg'),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5))),
                                  width: 180,
                                  height: 160,
                                  margin: EdgeInsets.only(
                                      left: 1, right: 1, top: 1),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(
                                    'The complete investment banking course',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Roboto Pro',
                                      color: Colors.black,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          child: Card(
                            semanticContainer: true,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/design_bgtwo.jpg'),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5))),
                                  width: 180,
                                  height: 160,
                                  margin: EdgeInsets.only(
                                      left: 1, right: 1, top: 1),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(
                                    'Nura Dev Mobile Design Class',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Roboto Pro',
                                      color: Colors.black,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          child: Card(
                            semanticContainer: true,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'images/design_bgone.jpg'),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5))),
                                  width: 180,
                                  height: 160,
                                  margin: EdgeInsets.only(
                                      left: 1, right: 1, top: 1),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(
                                    'The complete investment banking course',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Roboto Pro',
                                      color: Colors.black,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
            )),
      ],
    );
  }
}
