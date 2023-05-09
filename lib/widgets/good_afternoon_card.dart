import 'package:flutter/material.dart';
import 'package:spotify_web_ui/color.dart';
import 'package:spotify_web_ui/model/mix.dart';

import 'good_afternoon_users.dart';

class GoodAfternoonCard extends StatelessWidget {
  final Mix mix;

  GoodAfternoonCard({this.mix});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: size.width * .01),
      width: size.width * .14,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secColor,
      ),
      child: Stack(
        children: [
          Positioned(
              left: size.width * .006,
              top: size.width * .006,
              bottom: size.width * .006,
              child: Container(
                width: size.width * .05,
                height: size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(mix.imageUrl))),
              )),
          Positioned(
              left: size.width * .065,
              top: size.width * .006,
              bottom: size.width * .006,
              child: Container(
                width: size.width * .08,
                height: size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                     mix.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: size.width * .01),
                    ),
                    Text(
                      "${mix.countTracks} Tracks",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * .009),
                    ),
                    GoodAfternoonUsers()
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
