import 'package:flutter/material.dart';
import 'package:plant_app_version1/widgets/plantList.dart';
import 'package:plant_app_version1/widgets/todaysTasks.dart';
import './model/plant.dart';

void main() => runApp(PlantApp());

class PlantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      home: PlantAppBody(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class PlantAppBody extends StatelessWidget {
  /*PLACEHOLDER DATA FOR BASIC FUNCTIONALITY */
  static final plantOne = Plant(
    name: 'Orchid',
    nickName: 'Juan',
    description:
        'Eldest brother to Julian, Grade A student with a bright furture. Quite but confident.',
    plantID: 1,
    firstWater: DateTime.now(),
  );

  static final plantTwo = Plant(
    name: 'Orchid',
    nickName: 'Julian',
    description:
        'Brother to Juan, definatley the sporty one. But doesn\'t shine so bright when it comes to inteligence.',
    plantID: 2,
    firstWater: DateTime.now(),
  );

  static final plantThree = Plant(
    name: 'Pilea peperomioides',
    nickName: 'Moneypenny',
    description:
        'A precious lady, expensive tastes and a little spoilt. She\'s lovely once you get to know her though.',
    plantID: 3,
    firstWater: DateTime.now(),
  );

  static final plantFour = Plant(
    name: 'Aloe Vera',
    nickName: 'Vera',
    description:
        'An old girl, with hidden knowledge and old wives tales about health. A good friend to have.',
    plantID: 4,
    firstWater: DateTime.now(),
  );

  static final plantFive = Plant(
    name: 'Peace Lily',
    nickName: 'Lil',
    description:
        'A hippy girl, very in touch with nature and super trendy. Also super needy.',
    plantID: 5,
    firstWater: DateTime.now(),
  );

  static final plantSix = Plant(
    name: 'Sider Plant',
    nickName: 'Peter Parker',
    description:
        'A small chilled out guy. Will get on with anyone and likes it anywhere. Easy going.',
    plantID: 6,
    firstWater: DateTime.now(),
  );

  final List<Plant> _plantList = [
    plantOne,
    plantTwo,
    plantThree,
    plantFour,
    plantFive,
    plantSix,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /* TO DO BOX */
          Flexible(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TodaysTasks(_plantList),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                //height: 100,
                color: Colors.green[400],
                child: const Center(
                  child: Text(
                    'to-do',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
          /* MY PLANTS BOX */
          Flexible(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlantList(_plantList),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                //height: 150,
                color: Colors.teal[400],
                child: const Center(
                  child: Text(
                    'My Plants',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
          /*MY ROOMS BOX*/
          Flexible(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                color: Colors.orange[400],
                child: const Center(
                  child: Text(
                    'My Rooms',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
