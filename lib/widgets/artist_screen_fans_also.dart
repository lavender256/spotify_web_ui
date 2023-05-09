import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_web_ui/data/data.dart';
import 'package:spotify_web_ui/model/artist.dart';
import 'package:spotify_web_ui/model/fans_also.dart';

import 'fans_also_card.dart';

class ArtistScreenFansAlso extends StatelessWidget {
final Artist artist;

ArtistScreenFansAlso({this.artist});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*.1),
      width: size.width,
      height: size.height*.4,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Fans also like",
            style: TextStyle(fontFamily: "Ethn",
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: size.width * .011),
          ),
        Container(
          width: size.width,
          height: size.height*.3,
          child: ListView.builder(
              itemCount: fanalsoList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context ,int index){
                FansAlso fansAlso=fanalsoList[index];
                return FansAlsoCard(fansAlso: fansAlso,color: artist.color2,);
              }),
        )
      ],)
    );
  }
}
