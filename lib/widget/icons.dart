import 'package:flutter/material.dart';

class iconshor extends StatefulWidget {
  @override
  _iconshorState createState() => _iconshorState();
}

class _iconshorState extends State<iconshor> {
  int _selectedIndex = 0;
  List<IconData> _buttonIcons = [Icons.person, Icons.work, Icons.photo_camera];
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 16),
              itemCount: _buttonIcons.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: _selectedIndex == index ? Colors.yellow : null,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(
                        _buttonIcons[index],
                        size: 30,
                        color: _selectedIndex == index
                            ? Color.fromARGB(255, 19, 229, 47)
                            : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
