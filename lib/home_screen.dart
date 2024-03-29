import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/blog_post_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          ' Latest Feed ',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: IconButton(
              icon: Icon(
                Icons.add_circle_rounded,
                size: 40,
                color: Colors.lightBlueAccent,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
              backgroundColor: Colors.black),
        ],
      ),
      body: ListView(
        children: [
          FeedPost(
            personalImagePath: 'assets/images/tobias_2.jpg',
            name: 'Tobias Van',
            readDuration: '3 min read',
            blogPost: 'A look into collaborative wireframing process',
            blogImagePath: 'assets/images/feedimage_1.png',
            category: 'UX DESIGN',
          ),
          FeedPost(
            personalImagePath: 'assets/images/chris.jpg',
            name: 'Chris Coyier',
            readDuration: '5 min read',
            blogPost: '20 Tools that will help you become a better freelancer',
            blogImagePath: 'assets/images/feedimage_2.png',
            category: 'FREELANCE',
          ),
          FeedPost(
            personalImagePath: 'assets/images/katie.jpg',
            name: 'Katie Price',
            readDuration: '4 min read',
            blogPost: 'Collaboration workflows for remote design teams',
            blogImagePath: 'assets/images/feedimage_3.png',
            category: 'TOOLS',
          ),
          FeedPost(
            personalImagePath: 'assets/images/jeff.jpg',
            name: 'Jeff Sheldon',
            readDuration: '2 min read',
            blogPost:
                'These are the songs designers listen to when they want to get in the zone',
            blogImagePath: 'assets/images/feedimage_4.png',
            category: 'CONTENT',
          ),
        ],
      ),
    );
  }
}
