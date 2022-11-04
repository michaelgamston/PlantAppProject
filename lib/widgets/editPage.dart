import 'package:flutter/material.dart';
import '../model/plant.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final name = TextEditingController();
  final nickName = TextEditingController();
  final descition = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.save,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
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
                child: TextField(
                  decoration: const InputDecoration(labelText: "Name:"),
                  controller: name,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: TextField(
                  decoration: const InputDecoration(labelText: "Nick Name:"),
                  controller: nickName,
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
                  'place holder',
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
                  child: TextField(
                    controller: descition,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
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
