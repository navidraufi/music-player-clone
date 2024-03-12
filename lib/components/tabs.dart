import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message_app/components/constants.dart';
import 'package:message_app/components/music_list_view.dart';

class TracksTab extends StatelessWidget {
  const TracksTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kWhiteColor.withOpacity(0.1)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.sort_down,
                  color: kWhiteColor,
                ),
                label: Text(
                  "Date added",
                  style: TextStyle(color: kWhiteColor),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    color: kWhiteColor,
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.shuffle),
                  ),
                  IconButton(
                    color: kWhiteColor,
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.play_arrow_solid),
                  ),
                ],
              )
            ],
          ),
          const Expanded(child: MusicListView())
        ],
      ),
    );
  }
}
