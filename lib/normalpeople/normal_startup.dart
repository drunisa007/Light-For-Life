import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:light_for_life/models/pathline_model.dart';
import 'package:light_for_life/scope_models/ModelMain.dart';
import 'package:light_for_life/uielements/PathLine.dart';
import 'package:scoped_model/scoped_model.dart';

class NormalStartUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NormalStartUpPage();
  }
}

class _NormalStartUpPage extends State<NormalStartUpPage> {
  String _title = '1';
  bool _visible = false;
  bool _btncolor = false;
  String _showForm = 'one';
  int _segmentedControlValue=0;
  bool _btnDone=false;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Map<String, dynamic> _formData = {
    'name': null,
    'phoneno': null,
    'birth': null,
    'interestjob': null,
    'workexperience': null,
    'pass': null,
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
      body: ScopedModelDescendant<ModelMain>(builder: (context, child, model) {
        return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/startup.png'),
                      fit: BoxFit.fill)),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 220,
                left: 73,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 8,
                    child: Container(
                      width: 285,
                      height: 400,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(15)),
                      child: Stack(
                        children: <Widget>[
                          _buildTitle(context),
                          _buildBodyTextField(),
                          _buildNextandPreviousButton(model),

                        ],
                      ),
                    )),
              ),
              PathLine(),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildBodyTextField() {
    return Container(
      margin: EdgeInsets.only(top: 85, left: 10),
      child: Form(key: _formkey, child: _buildProfileDetail(context)),
    );
  }

  Widget _buildProfileDetail(BuildContext context) {
    if (_showForm == 'one') {
      return ListView(
        shrinkWrap: true,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/testericon.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                width: 213,
                height: 42,
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Roboto',
                      letterSpacing: 3,
                      fontSize: 17),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.blue,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: Colors.blue)),
                    hintText: 'your name',
                    contentPadding:
                        EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 8),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onSaved: (String value) {
                    _formData['name'] = value;
                  },
                  validator: (val) {
                    if (val.isEmpty) {
                      return 'name must not be empty';
                    }
                    return null;
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/testericon.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                width: 213,
                height: 42,
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.blue, fontFamily: 'Roboto', fontSize: 17),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.blue,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: Colors.blue)),
                    hintText: 'phone number',
                    contentPadding:
                        EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 8),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onSaved: (String value) {
                    _formData['phoneno'] = value;
                  },
                  validator: (val) {
                    if (val.isEmpty) {
                      return 'phone number must not be empty';
                    }
                    return null;
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/testericon.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                width: 213,
                height: 42,
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.blue, fontFamily: 'Roboto', fontSize: 17),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.blue,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.solid,
                            color: Colors.blue)),
                    hintText: 'date of birth',
                    contentPadding:
                        EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 8),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onSaved: (String value) {
                    _formData['birth'] = value;
                  },
                  validator: (val) {
                    if (val.isEmpty) {
                      return 'birth must not be empty';
                    }
                    return null;
                  },
                ),
              )
            ],
          )
        ],
      );
    } else {
      return ListView(
        shrinkWrap: true,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/testericon.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                width: 213,
                height: 40,
                child: Material(
                  color: Colors.blue,
                  elevation: 7,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    child: Center(
                      child: Text(
                        'interest jobs',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 3,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/testericon.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                width: 213,
                height: 40,
                child: Material(
                  color: Colors.blue,
                  elevation: 7,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    child: Center(
                      child: Text(
                        'work experience',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 3,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/testericon.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 9,
              ),
              Container(
                child: Text(
                  '10th Pass',
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 2,
                    color: Colors.black
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(0.0),
                width: 150,
                child: CupertinoSegmentedControl<int>(
                  selectedColor: Colors.blue,
                  borderColor: Colors.blue,
                  children: {
                    0:Text('YES',style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 12
                    ),),
                    1:Text('NO',style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 12
                    ),)
                  },
                  onValueChanged: (int val){
                    setState(() {
                      _segmentedControlValue=val;
                    });
                  },
                  groupValue: _segmentedControlValue,
                ),
              )

            ],
          )
        ],
      );
    }
  }

  Widget _buildTitle(BuildContext context) {
    return Positioned(
      top: -92,
      left: 70,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Theme.of(context).primaryColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 90.0),
            child: Text(
              _title,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Roboto Pro', fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNextandPreviousButton(ModelMain model) {
    return Positioned(
      top: 340,
      left: 10,
      child: Row(
        children: <Widget>[
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: _visible,
            child: Container(
              height: 38,
              width: 120,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent,
                elevation: 7,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Colors.white60,
                  onTap: () {
                    workingForPrevious(model);
                  },
                  child: Center(
                    child: Text(
                      'Previous',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 38,
            width: 120,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              color: _btncolor == true ? Colors.green : Colors.blue,
              elevation: 7,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.white60,
                onTap: () {
                  workingForNext(model);
                },
                child: _nextAndDoneButton(_btncolor),
              ),
            ),
          )
        ],
      ),
    );
  }

  void workingForNext(ModelMain model) {
    if (_title == '1') {
      setState(() {
        _title = '2';
        _visible = true;
        _showForm='two';
      });
      model.addPathLine(PathLineModel(circle: 'yes', path: 'yes'), 0);
    } else if(_title=='2'&&_btnDone==false){
      model.addPathLine(PathLineModel(circle: 'yes', path: 'yes'), 1);
      setState(() {
        _btncolor = true;
        _btnDone=true;
      });
    }
    else if(_title=='2'&&_btnDone==true){
      print('Done is triggered');
      Navigator.pushNamed(context, "/main_dashboard");
    }

  }

  void workingForPrevious(ModelMain model) {
   if (_title == '2') {
      setState(() {
        _title = '1';
        _visible = false;
        _showForm='one';
        _btncolor=false;
      });
      model.addPathLine(PathLineModel(circle: 'no', path: 'no'), 0);
      model.addPathLine(PathLineModel(circle: 'no', path: 'no'), 1);
    }
  }

  Widget _nextAndDoneButton(bool) {
    Widget context = Center(
      child: Text(
        'Next',
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );

    if (bool) {
      return Center(
        child: Text(
          'DONE',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      );
    }
    return context;
  }
}
