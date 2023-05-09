import 'package:flutter/material.dart';
import 'package:spotify_web_ui/color.dart';

class  RightSideBarOptions extends StatelessWidget {
final String imageUrl;
final String name;
final String song;


RightSideBarOptions({this.imageUrl, this.name, this.song});

@override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.15,
      height: size.height*.06,
      child: Row(children: [
        Container(width: size.width*.035,
        height: size.width*.035,
          decoration: BoxDecoration(
           image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        SizedBox(width: size.width*.01,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(name,style: TextStyle(color: Colors.white,fontSize: size.width*.01,fontWeight: FontWeight.w800),),
          Text(song,style: TextStyle(color: Colors.white.withOpacity(.7),fontSize: size.width*.009,fontWeight: FontWeight.w500),)
        ],)
      ],),
    );
  }
}
