import 'package:flutter/material.dart';
import '../model/plant.dart';
import 'package:intl/intl.dart';

class WateringTask extends StatefulWidget {
  final List<Plant> _plantList;

  const WateringTask(this._plantList);

  @override
  State<WateringTask> createState() => _WateringTaskState();
}

class _WateringTaskState extends State<WateringTask> {
  List<Plant> get _taskList {
    List<Plant> tempList = [];
    var today = DateTime.now();
    var check = DateFormat.MMMMd().format(today);
    for (int i = 0; i < widget._plantList.length; i++) {
      if (check == DateFormat.MMMMd().format(widget._plantList[i].water.next) &&
          !widget._plantList[i].water.completeTask) {
        tempList.add(widget._plantList[i]);
      }
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          Container(
            /* CHANGE ME */
            //color: Colors.green[100],
            /* CHANGE ME */
            ///height: 150,
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //color: Colors.green,
            ),

            height: (MediaQuery.of(context).size.height) * 0.7,
            /*LIST VIEW*/
            child: ListView.builder(
              itemCount: _taskList.length,
              padding: const EdgeInsets.all(10),
              //BUILDER
              itemBuilder: (context, index) {
                return Card(
                  //LIST TILE
                  child: ListTile(
                    enabled: !_taskList[index].water.checkBox,
                    visualDensity: const VisualDensity(vertical: -4),
                    //PICTURE
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/plantImage.jpg'),
                    ),
                    //TITLE
                    title: Text(_taskList[index].name),
                    //SUBTITLE
                    subtitle: Text(
                      'Last watered: ${DateFormat.MMMMd().format(_taskList[index].water.next)}',
                      style: const TextStyle(fontSize: 13),
                    ),

                    //CHECKBOX
                    trailing: Checkbox(
                      value: _taskList[index].water.checkBox,
                      onChanged: (value) {
                        setState(
                          () {
                            _taskList[index].water.checkBox = value!;
                          },
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CircleAvatar(
            radius: 30,
            foregroundImage: AssetImage(Watering.avatar),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < _taskList.length; i++) {
            if (_taskList[i].water.checkBox) {
              setState(() {
                _taskList[i].water.completeTask = true;
              });
            }
          }
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}

class FeedingTask extends StatefulWidget {
  final List<Plant> _plantList;
  const FeedingTask(this._plantList);

  @override
  State<FeedingTask> createState() => _FeedingTaskState();
}

class _FeedingTaskState extends State<FeedingTask> {
  List<Plant> get _taskList {
    List<Plant> tempList = [];
    var today = DateTime.now();
    var check = DateFormat.MMMMd().format(today);
    for (int i = 0; i < widget._plantList.length; i++) {
      if (check == DateFormat.MMMMd().format(widget._plantList[i].feed.next) &&
          !widget._plantList[i].feed.completeTask) {
        tempList.add(widget._plantList[i]);
      }
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          Container(
            /* CHANGE ME */
            //color: Colors.green[100],
            /* CHANGE ME */
            ///height: 150,
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //color: Colors.green,
            ),

            height: (MediaQuery.of(context).size.height) * 0.7,
            /*LIST VIEW*/
            child: ListView.builder(
              itemCount: _taskList.length,
              padding: const EdgeInsets.all(10),
              //BUILDER
              itemBuilder: (context, index) {
                return Card(
                  //LIST TILE
                  child: ListTile(
                    enabled: !_taskList[index].feed.checkBox,
                    visualDensity: const VisualDensity(vertical: -4),
                    //PICTURE
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/plantImage.jpg'),
                    ),
                    //TITLE
                    title: Text(_taskList[index].name),
                    //SUBTITLE
                    subtitle: Text(
                      'Last fed: ${DateFormat.MMMMd().format(_taskList[index].feed.next)}',
                      style: const TextStyle(fontSize: 13),
                    ),

                    //CHECKBOX
                    trailing: Checkbox(
                      value: _taskList[index].feed.checkBox,
                      onChanged: (value) {
                        setState(
                          () {
                            _taskList[index].feed.checkBox = value!;
                          },
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CircleAvatar(
            radius: 30,
            foregroundImage: AssetImage(Feeding.avatar),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < _taskList.length; i++) {
            if (_taskList[i].feed.checkBox) {
              setState(() {
                _taskList[i].feed.completeTask = true;
              });
            }
          }
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}

class RepottingTask extends StatefulWidget {
  final List<Plant> _plantList;
  const RepottingTask(this._plantList);

  @override
  State<RepottingTask> createState() => _RepottingTaskState();
}

class _RepottingTaskState extends State<RepottingTask> {
  List<Plant> get _taskList {
    List<Plant> tempList = [];
    var today = DateTime.now();
    var check = DateFormat.MMMMd().format(today);
    for (int i = 0; i < widget._plantList.length; i++) {
      if (check ==
              DateFormat.MMMMd().format(widget._plantList[i].repotting.next) &&
          !widget._plantList[i].repotting.completeTask) {
        tempList.add(widget._plantList[i]);
      }
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          Container(
            /* CHANGE ME */
            //color: Colors.green[100],
            /* CHANGE ME */
            ///height: 150,
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //color: Colors.green,
            ),

            height: (MediaQuery.of(context).size.height) * 0.7,
            /*LIST VIEW*/
            child: ListView.builder(
              itemCount: _taskList.length,
              padding: const EdgeInsets.all(10),
              //BUILDER
              itemBuilder: (context, index) {
                return Card(
                  //LIST TILE
                  child: ListTile(
                    enabled: !_taskList[index].repotting.checkBox,
                    visualDensity: const VisualDensity(vertical: -4),
                    //PICTURE
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/plantImage.jpg'),
                    ),
                    //TITLE
                    title: Text(_taskList[index].name),
                    //SUBTITLE
                    subtitle: Text(
                      'Last repotted: ${DateFormat.MMMMd().format(_taskList[index].repotting.next)}',
                      style: const TextStyle(fontSize: 13),
                    ),

                    //CHECKBOX
                    trailing: Checkbox(
                      value: _taskList[index].repotting.checkBox,
                      onChanged: (value) {
                        setState(
                          () {
                            _taskList[index].repotting.checkBox = value!;
                          },
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CircleAvatar(
            radius: 30,
            foregroundImage: AssetImage(Repotting.avatar),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < _taskList.length; i++) {
            if (_taskList[i].repotting.checkBox) {
              setState(() {
                _taskList[i].repotting.completeTask = true;
              });
            }
          }
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
