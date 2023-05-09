import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/model/music.dart';

import '../color.dart';



class ReleaseCard extends StatefulWidget {
  final Music music;

  ReleaseCard({this.music});

  @override
  State<ReleaseCard> createState() => _ReleaseCardState();
}

class _ReleaseCardState extends State<ReleaseCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: size.width * .01),
      width: size.width * .09,
      height: size.height*.27,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(widget.music.imageUrl), fit: BoxFit.fill)),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: BlurryContainer(  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
              blur: 10,
              child: Container(width: size.width,
                height: size.height*.07,
              ),
            )
            ),
          Positioned(
              bottom: 5,
              right: 5,
              left: 5,
              child: Container(
                padding: EdgeInsets.only(left: size.width*.008),
                height: size.height*.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(widget.music.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: size.width*.009),),
                    Text(widget.music.singer,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: size.width*.007),)
                  ],
                ),
              )
          ),
          Positioned(
            right: size.width*.008,
            bottom: size.height*.046,
            child: Container(
              width: size.width * .026,
              height: size.width * .026,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                 color: mainColor
              ),
              child: IconButton(icon: Icon(Iconsax.play,color: Colors.white,size: size.width*.014,),onPressed: null,),
            ),
          )
        ],
      ),
    );
  }
}
