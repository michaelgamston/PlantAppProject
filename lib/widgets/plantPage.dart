import 'package:flutter/material.dart';
import '../model/plant.dart';
import 'package:intl/intl.dart';

class PlantPage extends StatelessWidget {
  final Plant plant;

  PlantPage(this.plant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/plantImage.jpg'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  plant.name.toString(),
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  plant.nickName.toString(),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Most recent water:',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  DateFormat.MMMMd().format(plant.firstWater).toString(),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Next water:',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'change me',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Description:',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(plant.description.toString()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/water.png'),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/sun.png'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
