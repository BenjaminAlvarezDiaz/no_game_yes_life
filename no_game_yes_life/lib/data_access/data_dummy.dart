import 'package:no_game_yes_life/interfaces/idata_access.dart';
import 'package:no_game_yes_life/src/models/hobby_stop_watch_model.dart';
import 'package:no_game_yes_life/src/models/user_model.dart';

class Dummy implements IDataAccess{
  late HobbyStopWatch hobbyStopWatch;
  late User user;

  @override
  getCountDown() {
    hobbyStopWatch = HobbyStopWatch(const Duration(hours: 16)); //Aqui agarro el tiempo por semana
    return hobbyStopWatch.countdown;
  }

  @override
  getNickname(){
    user = User('Benjamin', 100.0); //El modelo del user tiene el nombre y su tiempo "pila"
    return user.name;
  }

  @override
  setNickname(String newNickname){
    //print(user.name);
    user.name = newNickname;
    //print(user.name);
  }

  @override
  setRoutine(double newRoutine){
    user.routine = newRoutine;
    print(newRoutine);
  }
}