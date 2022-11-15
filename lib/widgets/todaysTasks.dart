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
      //backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.035,
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.075,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  //get the title roughly in the middle
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 89, 218, 93),
                          Color.fromARGB(255, 65, 165, 79),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Text(
                      "To-Do",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.85,
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
