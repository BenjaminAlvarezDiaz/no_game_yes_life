import 'package:no_game_yes_life/data_access/data_dummy.dart';
import 'package:no_game_yes_life/interfaces/idata_access.dart';

class DataManager{

  late IDataAccess dataAccess;

  DataManager._privateConstruct(this.dataAccess);
  static final DataManager _instance = DataManager._privateConstruct(Dummy());

  factory DataManager(){
    return _instance;
  }

  getCountDown(){
    return dataAccess.getCountDown();
  }
}