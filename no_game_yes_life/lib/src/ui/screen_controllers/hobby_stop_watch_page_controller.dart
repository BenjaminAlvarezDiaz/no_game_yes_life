import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/manager/data_manager.dart';

class HobbyStopWatchPageController extends ControllerMVC {
  late DataManager dataManager;
  HobbyStopWatchPageController._privateConstruct(this.dataManager);

  static final HobbyStopWatchPageController _instance = HobbyStopWatchPageController._privateConstruct(DataManager());

  factory HobbyStopWatchPageController(){
    return _instance;
  }

  init (){
    getCountdown();
  }

  getCountdown(){
    return dataManager.getCountDown();
  }
}