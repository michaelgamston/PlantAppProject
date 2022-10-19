/* dateTime will be tricky to implement, do once base funcationality is implemented */
class Plant {
  final String name;
  final String nickName;
  final String description;
  final DateTime firstWater;
  final int plantID;
  bool checkBox = false;
  //final List<DateTime> wateringSchedule;

  Plant({
    required this.name,
    required this.nickName,
    required this.description,
    required this.firstWater,
    required this.plantID,
    //required this.wateringSchedule,
  });
}
