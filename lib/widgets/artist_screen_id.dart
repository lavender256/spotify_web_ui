import 'package:flutter/material.dart';
import 'package:spotify_web_ui/model/artist.dart';

import '../color.dart';

class ArtistScreenId extends StatelessWidget {
 final Artist artist;


 ArtistScreenId({this.artist});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      height: size.height * .25,
      child: Row(
        children: [
          Container(
            width: size.width * .1,
            height: size.height * 25,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(artist.profImage))),
          ),
          SizedBox(
            width: size.width * .02,
          ),
          Container(
            width: size.width * .5,
            height: size.height * .25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  artist.name,
                  style: TextStyle(fontFamily: "Ethn",
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * .02),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                Row(children: [
                  Text(
                    "Alternative ,Guitar",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.7)),
                  ),
                  SizedBox(width: size.width*.02,),
                  Text(
                    "43,453,556 monthly listeners",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontSize: size.width * .01,
                        fontWeight: FontWeight.w600),
                  ),
                ],),
                SizedBox(
                  height: size.height * .035,
                ),
                Container(
                  width: size.width * .28,
                  height: size.height * .04,
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * .09,
                        height: size.height * .045,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: mainColor),
                        child: Center(
                          child: Text(
                            "Play all".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * .09,
                        height: size.height * .045,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: mainColor),
                        child: Center(
                          child: Text(
                            "Mix".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * .09,
                        height: size.height * .045,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: mainColor, width: 1.5)),
                        child: Center(
                          child: Text(
                            "Favourites".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
