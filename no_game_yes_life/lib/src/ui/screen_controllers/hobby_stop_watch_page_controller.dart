import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/manager/data_manager.dart';

class HobbyStopWatchPageController extends ControllerMVC {
  late DataManager dataManager;
  HobbyStopWatchPageController._privateConstruct();

  static final HobbyStopWatchPageController _instance = HobbyStopWatchPageController._privateConstruct();

  factory HobbyStopWatchPageController(){
    return _instance;
  }

  getCountdown(){
    return dataManager.getCountDown();
  }
}