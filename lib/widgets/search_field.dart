import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/color.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: size.width * .01),
      width: size.width * .57,
      height: size.height*.07,
      decoration: BoxDecoration(
          color: secColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(height: size.height,
          width: size.width*.48,
          child: TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(
                    color: Colors.white.withOpacity(.7),
                    fontSize: size.width * .009),
                hintText: "Artist, Songs or Podcasts...",
                prefixIcon: Icon(
                  Iconsax.search_normal,
                  color: Colors.white.withOpacity(.7),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none),
          ),
        ),
        Container(width: size.width*.08,
          height: size.height,
          decoration: BoxDecoration(
              border: Border(left: BorderSide(color: Colors.black,width: 2))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(icon: Icon(FrinoIcons.f_filter,color: Colors.white.withOpacity(.9),), onPressed: null),
            Text("Filter",style: TextStyle(color: Colors.white.withOpacity(.7)),)
          ],),
        )
      ]),
    );
  }
}
