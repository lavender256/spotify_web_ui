import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/color.dart';
import 'package:spotify_web_ui/model/artist.dart';

import 'home_play_button.dart';

class ArtistWidgetCard extends StatefulWidget {
  final Artist artist;

  ArtistWidgetCard({this.artist});

  @override
  State<ArtistWidgetCard> createState() => _ArtistWidgetCardState();
}

class _ArtistWidgetCardState extends State<ArtistWidgetCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height * .32,
        child: Stack(children: [
          Positioned(
            bottom: size.height*.04,
            left: 0,
            right: 0,
            child: Container(
              width: size.width,
              height: size.height * .24,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.network('https://s8.uupload.ir/files/2_7dxy.jpg')
                        .blurred(blur: 10, blurColor: widget.artist.color),
                  )),
            ),
          ),
          Positioned(
              left: size.width * .01,
              bottom: size.height*.04,
              child: Container(
                width: size.width * .37,
                height: size.height * .24,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.artist.name,
                      style: TextStyle(
                          color: mainColor,fontFamily: "Ethn",
                          fontWeight: FontWeight.w900,
                          fontSize: size.width * .015),
                    ),
                    Text(
                      "${widget.artist.countTrack} - ${widget.artist.min}",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: size.width * .009),
                    ),
                    Text(
                   widget.artist.bio,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: size.width * .01),
                    ),
                  ],
                ),
              )),
          Positioned(
              right: 0,
              bottom: size.height*.04,
              top: size.height * .007,
              child: Container(
                  width: size.width * .16,
                  height: size.height * .29,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                          image: NetworkImage(widget.artist.imageUrl))))),
          Positioned(
              right: size.width*.01,
              bottom: 0,
              child: HomePlayButton(artist: widget.artist,))

        ]));
  }
}
