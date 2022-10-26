import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:no_game_yes_life/manager/data_manager.dart';

class OptionRoutinePageController extends ControllerMVC {
  late DataManager dataManager;

  OptionRoutinePageController._privateConstruct(this.dataManager);

  static final OptionRoutinePageController _instance = OptionRoutinePageController._privateConstruct(DataManager());

  factory OptionRoutinePageController(){
    return _instance;
  }

  init() {
  }

  setRoutine(double newRoutine) {
    dataManager.setRoutine(newRoutine);
  }
}