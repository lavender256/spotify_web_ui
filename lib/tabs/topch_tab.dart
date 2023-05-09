import 'package:flutter/material.dart';
import 'package:spotify_web_ui/data/data.dart';
import 'package:spotify_web_ui/model/music.dart';
import 'package:spotify_web_ui/widgets/artist_track_card.dart';

class TopChTab extends StatefulWidget {
  @override
  State<TopChTab> createState() => _TopChTabState();
}

class _TopChTabState extends State<TopChTab> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Tracks",
            style: TextStyle(fontFamily: "Ethn",
                color: Colors.white,
                fontSize: size.width * .011,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: size.height*.01,),
          Container(
            width: size.width*.7,
            height: size.height * .03,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "#",
                    style: TextStyle(color: Colors.white.withOpacity(.7)),
                  ),
                  Text(
                    "SONG",
                    style: TextStyle(color: Colors.white.withOpacity(.7)),
                  ),
                  Text(
                    "ARTIST",
                    style: TextStyle(color: Colors.white.withOpacity(.7)),
                  ),
                  Text(
                    "DAILY PLAYS",
                    style: TextStyle(color: Colors.white.withOpacity(.7)),
                  ), Text(
                    "TIME",
                    style: TextStyle(color: Colors.white.withOpacity(.7)),
                  ), Text(
                    "OPTIONS",
                    style: TextStyle(color: Colors.white.withOpacity(.7)),
                  )
                ]),
          ),
          SizedBox(height: size.height*.005,),
          Container(width: size.width*.8,
            height: 1.5,color: Colors.white.withOpacity(.5),
          ),
          Container(width: size.width*.8,
            height: size.height*.405,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context,int index){
                  Music music=musicList[index];
                  return ArtistTrackCard(index: index,music: music,);
                }),
          )
        ],
      ),
    );
  }
}
