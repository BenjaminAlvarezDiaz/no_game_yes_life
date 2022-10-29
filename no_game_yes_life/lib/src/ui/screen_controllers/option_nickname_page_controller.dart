import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/manager/data_manager.dart';

class OptionNicknamePageController extends ControllerMVC{
  late DataManager dataManager;
  OptionNicknamePageController._privateConstruct(this.dataManager);
  static final OptionNicknamePageController _instance = OptionNicknamePageController._privateConstruct(DataManager());

  factory OptionNicknamePageController(){
    return _instance;
  }

  init(){

  }

  setNickname(String newNickname){
    dataManager.setNickname(newNickname);
  }
}