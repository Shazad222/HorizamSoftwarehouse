// import 'package:flutter/material.dart';

// class MyListView extends StatefulWidget {
//   @override
//   _MyListViewState createState() => _MyListViewState();
// }

// class _MyListViewState extends State<MyListView> {
//   int _selectedIndex = 0;
//   List<String> _buttonNames = ['Social', 'Pro', 'Crop'];

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: double.infinity,
//         margin: const EdgeInsets.all(10.0),
//         padding: const EdgeInsets.all(20.0),
//         height: 100,
//         child: ListView.separated(
//           scrollDirection: Axis.horizontal,
//           separatorBuilder: (BuildContext context, int index) =>
//               SizedBox(width: 16),
//           itemCount: _buttonNames.length,
//           itemBuilder: (BuildContext context, int index) {
//             return GestureDetector(
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = index;
//                 });
//               },
//               child: Container(
//                 width: 100,
//                 decoration: BoxDecoration(
//                   color: _selectedIndex == index ? Colors.yellow : null,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Center(
//                   child: Text(
//                     _buttonNames[index],
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  int _selectedIndex = 0;
  List<String> _buttonNames = ['Social', 'Pro', 'Crop'];
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
              itemCount: _buttonNames.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                      _pageController.jumpToPage(index);
                    });
                  },
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: _selectedIndex == index ? Colors.yellow : null,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        _buttonNames[index],
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: const [
                Center(
                  child: Text(
                    'Social',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Center(
                  child: Text(
                    'Pro',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Center(
                  child: Text(
                    'Crop',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
