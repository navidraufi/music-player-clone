import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message_app/data/music_class.dart';
import 'package:message_app/main.dart';

import 'constants.dart';

class MusicListView extends StatefulWidget {
  const MusicListView({super.key});

  @override
  State<MusicListView> createState() => _MusicListViewState();
}

class _MusicListViewState extends State<MusicListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: Icon(
                Icons.more_vert,
                color: kWhiteColor,
              ),
            ),
            title: Text(
              musicList[index].musicName,
              style: TextStyle(color: kWhiteColor),
            ),
            onTap: () {
              activeMusic = MusicInfo(
                  album: musicList[index].album,
                  musicName: musicList[index].musicName);
              setState(() {});
              Navigator.pushNamed(context, "/playPage");
            },
            subtitle: Text(musicList[index].album),
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: kWhiteColor.withOpacity(0.2),
              ),
              child: Icon(
                CupertinoIcons.music_note_2,
                color: kWhiteColor,
              ),
            ),
          );
        },
        itemCount: musicList.length);
  }
}
