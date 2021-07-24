import 'dart:ui';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/blog_post_widget.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Icon(
            Icons.arrow_back_ios,
            size: 27,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.bookmark_border,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   fixedColor: Colors.lightBlueAccent,
      //   unselectedItemColor: Colors.grey,
      //   iconSize: 30,
      //   currentIndex: 0,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: new Icon(Icons.home),
      //         label: '',
      //         backgroundColor: Colors.greenAccent),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.search), label: '', backgroundColor: Colors.red),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.bookmark_border),
      //         label: '',
      //         backgroundColor: Colors.black),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person_outline),
      //         label: '',
      //         backgroundColor: Colors.black),
      //   ],
      // ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 260,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/feedimage_1.png'),
                ),
              ),
              Positioned(
                left: 37,
                bottom: 12,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'UX DESIGN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  width: 109,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(45, 20, 18, 10),
                child: Text(
                  'A look into collaborative wireframing process',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 27),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/tobias_2.jpg'),
                  ),
                  title: Text(
                    'Tobias Van',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  subtitle: Text('12th March 2019'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 16, 30, 20),
                child: Text(
                  "Wireframing is a critical step in design—for you, for developers, for copywriters, and for anyone else who needs to understand your design."
                  " With all those people needing access, wouldn\’t you want to work collaboratively from the get-go? "
                  "\n\nWhy bother making a wireframe collaboratively?"
                  "\n\nWell, for starters, collaborating lets you get feedback from your peers and stakeholders early on in the design process, keeping you from endless feedback cycles and helping you launch better designs faster.\n\n"
                  "Whether you’re sitting right next to someone or they’re halfway across the world, working sessions help foster creativity. Ideas are the gift that keeps on giving—one leads to another leads to another and, before you know it, you and your team are throwing creative calls back-and-forth like old pros.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                height: 48,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.indigo,
                        child: Icon(
                          EvaIcons.facebook,
                          size: 25, //Icon Size
                          color: Colors.white, //Color Of Icon
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: Icon(
                          Icons.push_pin,
                          size: 25, //Icon Size
                          color: Colors.white, //Color Of Icon
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.lightBlue,
                        child: Icon(
                          EvaIcons.twitter,
                          size: 25, //Icon Size
                          color: Colors.white, //Color Of Icon
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orangeAccent,
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
