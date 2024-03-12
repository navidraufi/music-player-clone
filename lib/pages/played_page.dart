import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message_app/components/constants.dart';
import 'package:message_app/main.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage>
    with SingleTickerProviderStateMixin {
  bool isFavorite = false;
  double progressBar = 0;
  bool isPlay = false;

  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            tooltip: "Navigate up",
            icon: const Icon(Icons.keyboard_arrow_down),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              tooltip: "Smart view",
              onPressed: () {},
              icon: const Icon(Icons.tv_rounded),
            ),
            IconButton(
              tooltip: "90% Volume",
              onPressed: () {},
              icon: const Icon(CupertinoIcons.volume_down),
            ),
            IconButton(
              tooltip: "Sound quality and effects",
              onPressed: () {},
              icon: const Icon(Icons.equalizer_rounded),
            ),
            IconButton(
              tooltip: "More options",
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 100,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  FlutterLogo(
                    size: 200,
                  ),
                  Text(
                    activeMusic.musicName,
                  ),
                  Text(activeMusic.album)
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.queue_music_rounded,
                            size: kPlayPageIconSizeSecondary,
                            color: kWhiteColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            isFavorite = !isFavorite;
                            setState(() {});
                          },
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite_rounded
                                : Icons.favorite_border_rounded,
                            size: kPlayPageIconSizeSecondary,
                            color: kWhiteColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: kPlayPageIconSizeSecondary,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    activeColor: kWhiteColor,
                    inactiveColor: kWhiteColor.withOpacity(0.1),
                    thumbColor: kWhiteColor,
                    max: 100,
                    min: 0,
                    value: progressBar,
                    onChanged: (value) {
                      progressBar = value;
                      setState(() {});
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.shuffle,
                          color: kWhiteColor,
                          size: kPlayPageIconSizePrimary,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.backward_end_alt_fill,
                          color: kWhiteColor,
                          size: kPlayPageIconSizePrimary,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (isPlay == false) {
                            _controller.forward();
                            isPlay = true;
                          } else {
                            _controller.reverse();
                            isPlay = false;
                          }
                        },
                        icon: AnimatedIcon(
                          size: 50,
                          color: kWhiteColor,
                          icon: AnimatedIcons.play_pause,
                          progress: _controller,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.forward_end_alt_fill,
                          color: kWhiteColor,
                          size: kPlayPageIconSizePrimary,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.repeat,
                          color: kWhiteColor,
                          size: kPlayPageIconSizePrimary,
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
