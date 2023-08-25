import 'package:flutter/material.dart';
import 'package:spotify_project/models/music.dart';
import 'package:spotify_project/screens/home.dart';
import 'package:spotify_project/screens/library.dart';
import 'package:spotify_project/screens/search.dart';

class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  var tabs = [];
  int currentTabIndex = 0;

  Music? music;

  Widget miniPlayer(Music? music) {
    this.music = music;
    setState(() {});
    if (music == null) {
      return const SizedBox();
    }
    Size device = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      color: Colors.blueGrey,
      width: device.width,
      height: 60,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.network(
          music.imageURL,
          fit: BoxFit.cover,
        ),
        Text(
          music.name,
          style: const TextStyle(color: Colors.white),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
            ))
      ]),
    );
  }

  @override
  void initState() {
    super.initState();
    tabs = [Home(miniPlayer), const Search(), const ComingSoon()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
              currentIndex: currentTabIndex,
              onTap: (currentIndex) {
                currentTabIndex = currentIndex;
                setState(() {});
              },
              selectedLabelStyle: const TextStyle(color: Colors.white),
              selectedItemColor: Colors.white,
              backgroundColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    )),
                BottomNavigationBarItem(
                    label: 'Search',
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
                BottomNavigationBarItem(
                    label: 'Your Library',
                    icon: Icon(
                      Icons.library_music_rounded,
                      color: Colors.white,
                    ))
              ]),
        ],
      ),
    );
  }
}
