import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RightSideQueueCard extends StatelessWidget {
final String song;
final String singer;

RightSideQueueCard({this.song, this.singer});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ Text(song,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: size.width*.01),),

            Text(singer,style: TextStyle(color: Colors.white.withOpacity(.7),fontWeight: FontWeight.w700,fontSize: size.width*.008),),

          ],
        ),
        Container(width: size.width*.017,
        height: size.width*.017,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          child: IconButton(icon: Icon(Iconsax.play5,size: size.width*.009,color: Colors.black,),onPressed: null,),
        )
      ],),
    );
  }
}
