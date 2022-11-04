import 'package:flutter/material.dart';

import '../model/plant.dart';
import '../widgets/swipeTasks.dart';

class TodaysTasks extends StatefulWidget {
  final List<Plant> _plantList;

  TodaysTasks(this._plantList);
  @override
  State<TodaysTasks> createState() => _TodaysTasksState();
}

class _TodaysTasksState extends State<TodaysTasks> {
  bool _index = true;
  AppBar appbar = AppBar(
    title: const Text("Todays Tasks"),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: GestureDetector(
        onPanUpdate: (details) {
          // Swiping in right direction.
          if (details.delta.dx > 0) {
            setState(() {
              _index = true;
            });
          }

          // Swiping in left direction.
          if (details.delta.dx < 0) {
            setState(() {
              _index = false;
            });
          }
        },
        child: SwipeTasks(_index, widget._plantList, appbar),
      ),
      /*ADD FUNCTION TO DELETE TASKS WHEN THIS IS PRESSED*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: _index
            ? const FittedBox(child: Text("watering"))
            : const FittedBox(child: Text("Other Tasks")),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
