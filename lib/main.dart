import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message_app/data/music_class.dart';
import 'package:message_app/pages/home_page.dart';
import 'package:message_app/pages/played_page.dart';
import 'components/constants.dart';

List<MusicInfo> musicList = [
  MusicInfo(album: "After Hours", musicName: "Blinding lights"),
  MusicInfo(album: "After Hours", musicName: "In your eyes"),
  MusicInfo(album: "After Hours", musicName: "Snowing"),
  MusicInfo(album: "Lonely star", musicName: "Bird part2"),
  MusicInfo(album: "After Hours", musicName: "Blinding lights"),
  MusicInfo(album: "After Hours", musicName: "In your eyes"),
  MusicInfo(album: "After Hours", musicName: "Snowing"),
  MusicInfo(album: "Lonely star", musicName: "Bird part2"),
  MusicInfo(album: "After Hours", musicName: "Blinding lights"),
  MusicInfo(album: "After Hours", musicName: "In your eyes"),
  MusicInfo(album: "After Hours", musicName: "Snowing"),
];

var activeMusic = MusicInfo(album: "", musicName: "");

void main() => runApp(const MainPage());

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(bodyMedium: TextStyle(color: kWhiteColor)),
          fontFamily: "Nunito",
          primaryColor: kPrimaryColor,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: kWhiteColor),
            backgroundColor: kPrimaryColor,
            titleTextStyle: TextStyle(color: kTextColorDark, fontSize: 20),
          ),
          scaffoldBackgroundColor: kPrimaryColor),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/playPage": (context) => const PlayPage(),
      },
    );
  }
}
