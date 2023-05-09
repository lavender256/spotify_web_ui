import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_web_ui/color.dart';
import 'package:spotify_web_ui/model/artist.dart';

import 'artitst_about_slider.dart';

class ArtistAbout extends StatelessWidget {
  final Artist artist;

  ArtistAbout({this.artist});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * .1),
        width: size.width,
        height: size.height * .62,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "About",
              style: TextStyle(fontFamily: "Ethn",
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: size.width * .011),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ArtistAboutSlider(),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * .01,
                      vertical: size.height * .02),
                  width: size.width * .3,
                  height: size.height * .55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        artist.bio,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * .012,
                            wordSpacing: 1.1,
                            letterSpacing: 1.1),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * .12,
                            height: size.width * .04,
                            decoration: BoxDecoration(
                                color: mainColor,),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "22592429",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: size.width * .014),
                                ),
                                Text(
                                  "Fallowers",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * .01),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: size.width * .12,
                            height: size.width * .04,
                            decoration: BoxDecoration(
                              border: Border.all( color: mainColor,width: 2),
                                ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "43505803",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: size.width * .014),
                                ),
                                Text(
                                  "Monthly Listeners",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * .01),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * .065,
                            height: size.width * .065,
                            decoration: BoxDecoration(
                                color: mainColor, shape: BoxShape.circle),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "London,GB",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: size.width * .009),
                                ),
                                Text(
                                  "1092839",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * .01),
                                ),
                                Text(
                                  "linsteners",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: size.width * .008),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: size.width * .065,
                            height: size.width * .065,
                            decoration: BoxDecoration(
                                color: mainColor, shape: BoxShape.circle),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Mexico,MX",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: size.width * .009),
                                ),
                                Text(
                                  "666008",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * .01),
                                ),
                                Text(
                                  "linsteners",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: size.width * .008),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: size.width * .065,
                            height: size.width * .065,
                            decoration: BoxDecoration(
                                color: mainColor, shape: BoxShape.circle),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Los Angles,US",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: size.width * .009),
                                ),
                                Text(
                                  "603004",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * .01),
                                ),
                                Text(
                                  "linsteners",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: size.width * .008),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: size.width * .065,
                            height: size.width * .065,
                            decoration: BoxDecoration(
                                color: mainColor, shape: BoxShape.circle),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Istanbul,TR",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: size.width * .009),
                                ),
                                Text(
                                  "567329",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * .01),
                                ),
                                Text(
                                  "linsteners",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: size.width * .008),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
