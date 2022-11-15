import 'package:flutter/material.dart';
import '../model/plant.dart';
import 'plantPage.dart';
import 'editPage.dart';

class PlantList extends StatefulWidget {
  final List<Plant> plantList;

  PlantList(this.plantList);

  @override
  State<PlantList> createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
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
                    color: Colors.teal,
                  ),
                ),
                SizedBox(
                  //get the title roughly in the middle
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 218, 189),
                          Color.fromARGB(255, 1, 180, 204),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Text(
                      "My Plants",
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
          Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 218, 189),
                  Color.fromARGB(255, 0, 132, 150),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            //color: Colors.green[100],
            child: ListView.builder(
              itemCount: widget.plantList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/plantImage.jpg'),
                        ),
                        title: Text(
                          widget.plantList[index].name,
                        ),
                        subtitle: Text(
                          widget.plantList[index].nickName,
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlantPage(
                                  widget.plantList[index],
                                ),
                              ),
                            );
                          },
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlantPage(
                                widget.plantList[index],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 132, 150),
        splashColor: const Color.fromARGB(255, 0, 218, 189),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EditPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
