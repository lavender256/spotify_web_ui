import "package:flutter/material.dart";
import 'package:spotify_web_ui/widgets/app_bar.dart';
import 'package:spotify_web_ui/widgets/home_screen_body.dart';
import 'package:spotify_web_ui/widgets/home_left_side_bar.dart';
import 'package:spotify_web_ui/widgets/home_right_side_bar.dart';

class HomeScreen extends StatefulWidget {
  final bool isSearch;

  HomeScreen({this.isSearch=false});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(left: 0, child: HomeLeftSideBar()),
            Positioned(left: size.width * .17, child: HomeScreenBody(),top: size.height*.12,),
            Positioned(right: 0,top: size.height*.14, child: HomeRightSideBar()),
            Positioned(
              top: size.height*.03,
                left: size.width * .17,
                child: CustomAppBar()),

          ],
        ),
      ),
    );
  }
}
