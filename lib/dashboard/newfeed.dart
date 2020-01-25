import 'dart:math';

import 'package:flutter/material.dart';

class NewFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 7),
      shrinkWrap: true,
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 430,
                child: Card(
                    semanticContainer: true,
                    elevation: 1,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 13,
                          top: 17,
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Card(
                              semanticContainer: true,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/design_bgone.jpg'),
                                        fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 73,
                          top: 22,
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Drunisa Malik',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Roboto Pro',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      letterSpacing: 3),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Post 3 hours ago',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 80, left: 1, right: 1),
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/design_bgone.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                        Positioned(
                          top: 263.5,
                          left: 5,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  size: 22,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                '3,145',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.insert_comment,
                                  size: 22,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                '200',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.share,
                                  size: 22,
                                  color: Colors.grey,
                                ),
                                onPressed: () {},
                              ),
                              Text(
                                '50',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 310, left: 18),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                letterSpacing: 2),
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: EdgeInsets.only(left: 40,right: 40,top: 399),
                child: Card(
                  elevation: 3,
                  semanticContainer: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Icon(Icons.favorite,color: Colors.blue,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.3,left: 5),
                            child: Text('LIKE',style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Roboto Pro'
                            ),),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.comment,color: Colors.grey,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.3,left: 5),
                            child: Text('COMMENT',style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Roboto Pro'
                            ),),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.share,color: Colors.grey,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.3,left: 5,right: 15),
                            child: Text('SHARE',style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Roboto Pro'
                            ),),
                          )
                        ],
                      ),


                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
