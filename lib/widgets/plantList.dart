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
      appBar: AppBar(
        title: const Text("My Plants"),
      ),
      backgroundColor: Colors.grey[400],
      body: Container(
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        padding: const EdgeInsets.all(10),
        //color: Colors.green[100],
        child: ListView.builder(
          itemCount: widget.plantList.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(2),
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
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
