import 'package:flutter/material.dart';
import '../model/plant.dart';
import 'package:intl/intl.dart';

class SwipeTasks extends StatefulWidget {
  bool _index;
  final List<Plant> _plantList;
  final AppBar _appbar;
  SwipeTasks(this._index, this._plantList, this._appbar);

  @override
  State<SwipeTasks> createState() => _SwipeTasksState();
}

class _SwipeTasksState extends State<SwipeTasks> {
  @override
  Widget build(BuildContext context) {
    /* WATERING TASKS */
    if (widget._index) {
      return Container(
        /* CHANGE ME */
        //color: Colors.green[100],
        /* CHANGE ME */
        ///height: 150,
        decoration: ShapeDecoration(
          color: const Color.fromARGB(96, 80, 78, 78),
          shape: Border.all(color: Colors.black),
        ),
        height: (MediaQuery.of(context).size.height -
            widget._appbar.preferredSize.height),
        /*LIST VIEW*/
        child: ListView.builder(
          itemCount: widget._plantList.length,
          padding: const EdgeInsets.all(10),
          //BUILDER
          itemBuilder: (context, index) {
            var today = DateTime.now();
            var waterCheck = DateFormat.MMMMd().format(today);
            //CHECK FOR DATE CONDITION
            if (waterCheck ==
                DateFormat.MMMMd()
                    .format(widget._plantList[index].firstWater)) {
              return Card(
                //LIST TILE
                child: ListTile(
                  enabled: !widget._plantList[index].checkBox,
                  visualDensity: const VisualDensity(vertical: -4),
                  //PICTURE
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/plantImage.jpg'),
                  ),
                  //TITLE
                  title: Text(widget._plantList[index].name),
                  //SUBTITLE
                  subtitle: Text(
                      'Last watered: ${DateFormat.MMMMd().format(widget._plantList[0].firstWater)}'),
                  //CHECKBOX
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
      /* RE POTTING TASKS */
    } else {
      /* FEEDING */
      return Container(
        /* CHANGE ME */
        //color: Colors.green[100],
        /* CHANGE ME */
        ///height: 150,
        decoration: ShapeDecoration(
          color: const Color.fromARGB(96, 80, 78, 78),
          shape: Border.all(color: Colors.black),
        ),
        height: (MediaQuery.of(context).size.height -
            widget._appbar.preferredSize.height),
        /*LIST VIEW*/
        child: ListView.builder(
          itemCount: widget._plantList.length,
          padding: const EdgeInsets.all(10),
          //BUILDER
          itemBuilder: (context, index) {
            var today = DateTime.now();
            var waterCheck = DateFormat.MMMMd().format(today);
            //CHECK FOR DATE CONDITION
            if (waterCheck ==
                DateFormat.MMMMd()
                    .format(widget._plantList[index].firstWater)) {
              return Card(
                //LIST TILE
                child: ListTile(
                  enabled: !widget._plantList[index].checkBox,
                  visualDensity: const VisualDensity(vertical: -4),
                  //PICTURE
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/plantImage.jpg'),
                  ),
                  //TITLE
                  title: Text("FEED"),
                  //SUBTITLE
                  subtitle: Text(
                      'Last watered: ${DateFormat.MMMMd().format(widget._plantList[0].firstWater)}'),
                  //CHECKBOX
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
}
