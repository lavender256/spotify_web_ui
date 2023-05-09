import 'package:flutter/material.dart';
import 'package:spotify_web_ui/screens/home_screen.dart';
import 'package:spotify_web_ui/widgets/search_field.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: size.width * .01,right: size.width*.02),
      width: size.width * .84,
      height: size.height * .08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          Container(
            width: size.width * .08,
            height: size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Iconsax.setting,
                      color: Colors.white.withOpacity(.7),
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Iconsax.message_notif,
                      color: Colors.white.withOpacity(.7),
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Iconsax.notification,
                      color: Colors.white.withOpacity(.7),
                    ),
                    onPressed: null)
              ],
            ),
          ),
          Container(
            width: size.width * .12,
            height: size.height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * .04,
                  height: size.width * .04,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(fit: BoxFit.cover,
                          image: NetworkImage("https://s8.uupload.ir/files/12_dqqy.jpg"))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Sanaz",
                      style: TextStyle(fontFamily: "Ethn",
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: size.width *.008),
                    ),
                    Text(
                      "Premium Account",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          fontWeight: FontWeight.w400,
                          fontSize: size.width *.009),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
