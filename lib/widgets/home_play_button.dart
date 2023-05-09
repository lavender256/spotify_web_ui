import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/model/artist.dart';

class HomePlayButton extends StatelessWidget {
 final Artist artist;

 HomePlayButton({this.artist});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.05
      ,height: size.width*.05,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width * .048,
            height: size.width * .048,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: artist.color2.withOpacity(.2),
            ),
          ),
          Container(
            width: size.width * .04,
            height: size.width * .04,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:artist.color3.withOpacity(.3),
            ),
            child: IconButton(icon: Icon(Iconsax.play5,color: Colors.white,size: size.width*.017,),onPressed: null,),
          ),
          Container(
            width: size.width * .032,
            height: size.width * .032,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      artist.color2,
                      artist.color,
                     artist.color3
                    ])
            ),
            child: IconButton(icon: Icon(Iconsax.play5,color: Colors.white,size: size.width*.017,),onPressed: null,),
          )
        ],
      ),
    );
  }
}
