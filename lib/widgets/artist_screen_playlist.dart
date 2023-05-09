import 'package:flutter/material.dart';
import 'package:spotify_web_ui/data/data.dart';
import 'package:spotify_web_ui/model/artist.dart';
import 'package:spotify_web_ui/model/music.dart';
import 'package:spotify_web_ui/widgets/artist_music_card.dart';
import 'package:spotify_web_ui/widgets/test.dart';

class ArtistScreenPlayList extends StatelessWidget {
final Artist artist;
final String title;
final List list;
ArtistScreenPlayList({this.artist,this.title,this.list});

@override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .1, vertical: size.height * .01),
      width: size.width,
      height: size.height * .4,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(fontFamily: "Ethn",
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: size.width * .011),
          ),
          Container(width: size.width,
            height: size.height*.31,
            child: ListView.builder(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  Music music=list[index];
                  return ArtistMusicCard(music: music,artist: artist);
                }),
          )
        ],
      ),
    );
  }
}
