import 'package:flutter/material.dart';

import '../color.dart';
class ArtistAboutCard extends StatelessWidget {
final String imageUrl;

ArtistAboutCard({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .5,
      height: size.height * .55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl))),
      child: Stack(
        children: [
          Positioned(
            right: size.width * .02,
            top: size.width * .02,
            child: Container(
              width: size.width * .05,
              height: size.width * .05,
              decoration: BoxDecoration(
                  color: mainColor, shape: BoxShape.circle),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "#1",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: size.width * .011),
                  ),
                  Text(
                    "in the world",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: size.width * .008),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
