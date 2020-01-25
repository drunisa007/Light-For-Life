
import 'package:flutter/material.dart';
import 'package:light_for_life/custom_icons/custom_icons_icons.dart';
import 'package:light_for_life/dashboard/article.dart';
import 'package:light_for_life/dashboard/course.dart';
import 'package:light_for_life/dashboard/class.dart';
import 'package:light_for_life/dashboard/home.dart';
import 'package:light_for_life/dashboard/newfeed.dart';
class MainDashBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainDashBoard();
  }
}

class _MainDashBoard extends State<MainDashBoard> {
  int _currentIndex = 0;

  List _listPage=[];
  List _title=[];


  void _OnTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  void initState() {
    _listPage.add(Home());
    _listPage.add(NewFeed());
    _listPage.add(Article());
    _listPage.add(Class());
    _listPage.add(Course());

    _title.add("Home");
    _title.add("News Feed");
    _title.add("Article");
    _title.add("Class");
    _title.add("Course");



    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: _currentIndex==3?0:4.0,
        title: Text(_title[_currentIndex],style: TextStyle(
          color: Colors.black,
          fontFamily: 'Roboto Pro',
          letterSpacing: 4
        ),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body:_listPage[_currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _OnTapped,
        selectedItemColor: Colors.blue,
        elevation: 10,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(CustomIcons.home,size: 20,), title: Text('Home'),
          ),
          BottomNavigationBarItem(icon: Icon(CustomIcons.newfeed), title: Text('Newfeed'),
          ),
          BottomNavigationBarItem(icon: Icon(CustomIcons.article,size: 20,), title: Text('Article'),
          ),
          BottomNavigationBarItem(icon: Icon(CustomIcons.classes), title: Text('Class'),
          ),
          BottomNavigationBarItem(icon: Icon(CustomIcons.course), title: Text('Course'),
          ),
        ],
      ),
    );
  }
}
