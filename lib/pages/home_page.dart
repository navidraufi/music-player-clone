import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message_app/components/tabs.dart';
import '../components/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBottomExtended = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 6,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          margin: EdgeInsets.only(bottom: isBottomExtended ? 0 : 10),
          height: isBottomExtended
              ? MediaQuery.of(context).size.height
              : MediaQuery.of(context).size.height * 0.09,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(111, 0, 0, 0),
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                isBottomExtended = !isBottomExtended;
              });

              Future.delayed(
                const Duration(milliseconds: 500),
                () {
                  Navigator.pushNamed(context, "/playPage");
                  setState(() {
                    isBottomExtended = !isBottomExtended;
                  });
                },
              );
            },
          ),
        ),
        appBar: AppBar(
          actions: [
            InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.search),
                )),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: PopupMenuButton(
                onSelected: (value) {
                  print(value);
                },
                padding: const EdgeInsets.all(10),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Edit",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text("Sound quality and effects",
                        style: TextStyle(fontSize: 16)),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text("Settings", style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            )
          ],
          title: const Text(
            "SAMSUNG Music",
          ),
          bottom: TabBar(
            tabAlignment: TabAlignment.center,
            dividerColor: Colors.transparent,
            unselectedLabelStyle:
                TextStyle(fontSize: 14, color: kWhiteColor.withOpacity(0.2)),
            labelStyle: TextStyle(color: kWhiteColor, fontSize: 22),
            indicatorColor: Colors.transparent,
            isScrollable: true,
            tabs: const [
              Tab(
                text: "Favorite",
              ),
              Tab(
                text: "Playlists",
              ),
              Tab(
                text: "Tracks",
              ),
              Tab(
                text: "Albums",
              ),
              Tab(
                text: "Artists",
              ),
              Tab(
                text: "Folders",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.red,
            ),
            const TracksTab(),
            Container(
              color: Colors.white,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.tealAccent,
            ),
          ],
        ),
      ),
    );
  }
}
