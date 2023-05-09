import 'package:flutter/material.dart';
import 'package:spotify_web_ui/model/artist.dart';

class ArtistScreenGradient extends StatelessWidget {
final Artist artist;


ArtistScreenGradient({this.artist});

@override
  Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent, Colors.transparent,Colors.transparent,
              artist.color.withOpacity(.5),
              artist.color.withOpacity(.7),
              artist.color.withOpacity(.9),
              artist.color,
              artist.color,
              artist.color,
              artist.color,
            ],
          )),
    );
  }
}
