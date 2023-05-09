import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/model/artist.dart';

import 'package:spotify_web_ui/model/music.dart';

class ArtistMusicCard2 extends StatefulWidget {
  final Music music;
  final Artist artist;

  ArtistMusicCard2({this.music, this.artist});

  @override
  _ArtistMusicCard2State createState() => _ArtistMusicCard2State();
}

class _ArtistMusicCard2State extends State<ArtistMusicCard2>
    with SingleTickerProviderStateMixin {
  bool isHover = false;
  AnimationController controller;
  Animation animation;
  Animation animationOpacity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      controller =
          AnimationController(vsync: this, duration: Duration(seconds: 2));
      animation = Tween<double>(begin: 0.0, end: 80).animate(CurvedAnimation(
          parent: controller, curve: Curves.fastLinearToSlowEaseIn));
      animationOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: controller, curve: Curves.fastLinearToSlowEaseIn));
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    setState(() {
      controller.dispose();
    });

  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
          controller.forward();
        });
      },
      child: Container(
        width: size.width * .09,
        height: size.height,
        margin: EdgeInsets.only(right: size.width * .01, top: isHover ? 0 : 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: widget.artist.color2
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * .09,
              height: size.height*.23,
              decoration: BoxDecoration(  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(widget.music.imageUrl))),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                        AnimatedBuilder(builder: (BuildContext context, child) {
                          controller.repeat();
                          return Positioned(
                            bottom: animation.value,
                            child: Container(
                              width: size.width * .026,
                              height: size.width * .026,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: widget.artist.color.withOpacity(animationOpacity.value)),
                              child: IconButton(
                                icon: Icon(
                                  Iconsax.play,
                                  color: Colors.white,
                                  size: size.width * .014,
                                ),
                                onPressed: null,
                              ),
                            ),
                          );
                        }, animation: controller,),
                ])),
            SizedBox(
              height: size.height * .01,
            ),
            Text(
              widget.music.name,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * .01),
            ),
          ],
        ),
      ),
    );
  }
}
