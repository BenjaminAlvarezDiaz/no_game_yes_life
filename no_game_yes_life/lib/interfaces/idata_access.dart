abstract class IDataAccess{
  getCountDown();
  getNickname();
  getAmountEasy();
  getAmountNormal();
  getAmountHard();
  getDateTimeNow();
  setNickname(String newNickname);
  setRoutine(double newRoutine);
  setAmountEasy(int newAmountEasy);
  setAmountNormal(int newAmountNormal);
  setAmountHard(int newAmountHard);
  setDateTimeNow(DateTime newDateTimeNow);
}