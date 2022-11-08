/* dateTime will be tricky to implement, do once base funcationality is implemented */
class Watering {
  //final DateTime previousWater;
  final DateTime next;
  bool completeTask = false;
  bool checkBox = false;
  static String avatar = "assets/images/water.png";

  Watering({
    //required this.previousWater,
    required this.next,
  });
}

class Feeding {
  final DateTime next;
  bool completeTask = false;
  bool checkBox = false;
  static String avatar = "assets/images/repot.jpg";

  Feeding({required this.next});
}

class Repotting {
  final DateTime next;
  bool completeTask = false;
  bool checkBox = false;
  static String avatar = "assets/images/feed.jpg";

  Repotting({required this.next});
}

class Plant {
  final String name;
  final String nickName;
  final String description;
  final Watering water;
  final Feeding feed;
  final Repotting repotting;
  final int plantID;

  //final List<DateTime> wateringSchedule;

  Plant({
    required this.name,
    required this.nickName,
    required this.description,
    required this.water,
    required this.feed,
    required this.repotting,
    required this.plantID,
    //required this.wateringSchedule,
  });
}
