import 'package:no_game_yes_life/interfaces/idata_access.dart';

class DataManager{

  late IDataAccess dataAccess;

  DataManager._privateConstruct();
  static final DataManager _instance = DataManager._privateConstruct();

  factory DataManager(){
    return _instance;
  }

  getCountDown(){
    return dataAccess.getCountDown();
  }
}