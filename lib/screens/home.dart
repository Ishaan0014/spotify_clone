import 'package:flutter/material.dart';
import 'package:spotify_project/models/category.dart';
import 'package:spotify_project/models/music.dart';
import 'package:spotify_project/services/category_operations.dart';
import 'package:spotify_project/services/music_operations.dart';


class Home extends StatelessWidget {
  final Function _miniPlayer;
  const Home(this._miniPlayer, {super.key});


  

  Widget createCategory(Categoryy category) {
    return Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(category.imageURL, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              category.name,
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createListOfCategory() {
    List<Categoryy> categoryList = CategoryOperations.getCategories();
    List<Widget> categories = categoryList
        .map((Categoryy category) => createCategory(category))
        .toList();
    return categories;
  }

  Widget createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 200,
              width: 200,
              child: InkWell(
                  onTap: () {
                    _miniPlayer(music);
                  },
                  child: Image.network(music.imageURL, fit: BoxFit.cover))),
          Text(
            music.name,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            music.desc,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperation.getMusic();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return createMusic(musicList[index]);
              },
              itemCount: musicList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget createGrid() {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 300,
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 5 / 2,
        crossAxisCount: 2,
        children: createListOfCategory(),
      ),
    );
  }

  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            message,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.notifications_none_outlined,
            size: 35,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.replay,
            size: 35,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.settings_outlined,
            size: 35,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          // ignore: sort_child_properties_last
          child: Column(
            children: [
              createAppBar('Good Morning'),
              const SizedBox(
                height: 5,
              ),
              createGrid(),
              createMusicList('Music For You'),
              createMusicList('Popular Playlist'),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blueGrey.shade300,
            Colors.black,
            Colors.black,
            Colors.black
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        ),
      ),
    );
  }
}
