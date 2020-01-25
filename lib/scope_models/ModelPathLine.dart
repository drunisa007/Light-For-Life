
import 'package:light_for_life/models/pathline_model.dart';
import 'package:scoped_model/scoped_model.dart';
class ModelPathLine extends Model {
  List<PathLineModel> _listCirclePath=[];
  ModelPathLine(){
    _listCirclePath.add(PathLineModel(circle: 'no',path: 'no'));
    _listCirclePath.add(PathLineModel(circle: 'no',path: 'no'));
    _listCirclePath.add(PathLineModel(circle: 'no',path: 'no'));

  }

  List<PathLineModel> getPathLines(){
    return List.from(_listCirclePath);
  }

  void addPathLine(PathLineModel model,int index){
    _listCirclePath[index]=model;
    notifyListeners();

  }

  PathLineModel  getPathLine(int index){
    return _listCirclePath[index];
  }


}