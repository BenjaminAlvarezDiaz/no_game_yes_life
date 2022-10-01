import 'package:no_game_yes_life/interfaces/idata_access.dart';
import 'package:no_game_yes_life/src/models/hobby_stop_watch_model.dart';

class Dummy implements IDataAccess{
  late HobbyStopWatch hobbyStopWatch;

  @override
  getCountDown() {
    hobbyStopWatch = HobbyStopWatch(const Duration(hours: 16));
    return hobbyStopWatch;
  }
}