import 'package:flutter/material.dart';
import '../model/plant.dart';
import 'package:intl/intl.dart';

class TodaysTasks extends StatefulWidget {
  final List<Plant> _plantList;

  TodaysTasks(this._plantList);
  @override
  State<TodaysTasks> createState() => _TodaysTasksState();
}

class _TodaysTasksState extends State<TodaysTasks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      /* CHANGE ME */
      //color: Colors.green[100],
      /* CHANGE ME */
      height: 150,
      decoration: ShapeDecoration(
        color: const Color.fromARGB(96, 80, 78, 78),
        shape: Border.all(color: Colors.black),
      ),
      child: ListView.builder(
        itemCount: widget._plantList.length,
        padding: const EdgeInsets.all(10),
        //padding: const EdgeInsets.all(2),
        itemBuilder: (context, index) {
          var today = DateTime.now();
          var waterCheck = DateFormat.MMMMd().format(today);
          if (waterCheck ==
              DateFormat.MMMMd().format(widget._plantList[index].firstWater)) {
            return Card(
              child: ListTile(
                visualDensity: const VisualDensity(vertical: -4),
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/plantImage.jpg'),
                ),
                title: Text(widget._plantList[index].name),
                subtitle: Text(
                    'Last watered: ${DateFormat.MMMMd().format(widget._plantList[0].firstWater)}'),
                trailing: Checkbox(
                  value: widget._plantList[index].checkBox,
                  onChanged: (value) {
                    setState(
                      () {
                        widget._plantList[index].checkBox = value!;
                      },
                    );
                  },
                ),
              ),
            );
          } else {
            return const Text('No watering left to do.');
          }
        },
      ),
    );
  }
}
