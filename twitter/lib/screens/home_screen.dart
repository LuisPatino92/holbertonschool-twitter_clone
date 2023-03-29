import 'package:flutter/material.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';
import 'package:twitter/widgets/post_widget.dart';
import 'package:twitter/widgets/side_bar_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,

        // ignore: prefer_const_constructors
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: SideBarMenu(),
      // ignore: prefer_const_constructors
      body: PostWidget(
          Imgurl:
              'http://www.bbk.ac.uk/mce/wp-content/uploads/2015/03/8327142885_9b447935ff.jpg',
          name: "red",
          subname: 'Reedxx',
          post:
              'or now just focus on how the widget should look and don’t worry about the class attributes because when we are going to build the backend we will start using models instead of passing every single field by itself.',
          tag: 'Motivation'),
    );
  }
}
