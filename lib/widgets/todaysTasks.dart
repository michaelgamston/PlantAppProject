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
  final _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.1,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.red,
                  ),
                ),
                const Center(child: Text("Todays Tasks")),
              ],
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.9,
            child: PageView(
              controller: _controller,
              children: [
                WateringTask(widget._plantList),
                FeedingTask(widget._plantList),
                RepottingTask(widget._plantList),
              ],
            ),
          ),
        ],
      ),
      /*ADD FUNCTION TO DELETE TASKS WHEN THIS IS PRESSED*/
    );
  }
}
