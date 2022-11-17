import 'package:flutter/material.dart';
import 'package:flutter_tiktok/components/feed/feed_component.dart';

const List<Map<String, dynamic>> data = [
  {
    "profile": {"username": "hubert1"},
    "media": "assets/video/1.mp4",
    "description": "Lorem ipsum et doloris 1."
  },
  {
    "profile": {"username": "hubert2"},
    "media": "assets/video/2.mp4",
    "description": "Lorem ipsum et doloris 2."
  },
  {
    "profile": {"username": "hubert3"},
    "media": "assets/video/3.mp4",
    "description": "Lorem ipsum et doloris 3."
  }
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        scrollDirection: Axis.vertical,
        children: data.map((item) {
          return FeedComponent(
            item: item,
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(label: 'Homme', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Add', icon: Icon(Icons.add_circle_outline_outlined)),
          BottomNavigationBarItem(label: 'Messenger', icon: Icon(Icons.message))
        ],
      ),
    );
  }
}
