import 'package:flutter/material.dart';


class MainListItem extends StatelessWidget {
  final Widget _NavigationWidget;
  final _plantList;
  final Color _color; 

  const MainListItem(this._NavigationWidget, this._plantList, this._color);

  @override
  Widget build(BuildContext context) {
    InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => _NavigationWidget(_plantList),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              margin: const EdgeInsets.all(10),
              //height: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    Colors.green.withOpacity(1),
                    Colors.green,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Center(
                child: Text(
                  'to-do',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
  }
}