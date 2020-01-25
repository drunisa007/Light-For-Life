import 'package:flutter/material.dart';
import 'package:light_for_life/scope_models/ModelMain.dart';
import 'package:scoped_model/scoped_model.dart';

class PathLine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PathLine();
  }
}

class _PathLine extends State<PathLine> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(top: 327, left: 15, child: _buildCirclePathLine());
  }

  Widget _buildCirclePathLine() {
    return ScopedModelDescendant<ModelMain>(
      builder: (context, child, model) {
        return Column(
          children: <Widget>[
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: model.getPathLine(0).circle == 'yes'
                      ? Colors.blue
                      : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    )
                  ]),
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                      fontFamily: 'Roboto Pro',
                      fontSize: 18,
                      color: model.getPathLine(0).circle == 'yes'
                          ? Colors.white
                          : Colors.black),
                ),
              ),
            ),
            _buildImage(context, model, 0),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: model.getPathLine(1).circle == 'yes'
                      ? Colors.blue
                      : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    )
                  ]),
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(
                      fontFamily: 'Roboto Pro',
                      fontSize: 18,
                      color: model.getPathLine(1).circle == 'yes'
                          ? Colors.white
                          : Colors.black),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildImage(BuildContext context, ModelMain model, int index) {
    return Container(
        child: model.getPathLine(index).path == 'yes'
            ? Image.asset('images/pathline.png',
                height: 77, width: 4, fit: BoxFit.fill)
            : Image.asset('images/pathline_black.png',
                height: 77, width: 4, fit: BoxFit.fill));
  }
}
