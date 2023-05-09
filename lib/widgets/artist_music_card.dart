import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/model/artist.dart';

import 'package:spotify_web_ui/model/music.dart';

class ArtistMusicCard extends StatefulWidget {
  final Music music;
  final Artist artist;

  ArtistMusicCard({this.music, this.artist});

  @override
  _ArtistMusicCardState createState() => _ArtistMusicCardState();
}

class _ArtistMusicCardState extends State<ArtistMusicCard>
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
      animation = Tween<double>(begin: 0.0, end: 40).animate(CurvedAnimation(
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
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          isHover = true;
         controller.forward();
        });
      },
      onExit: (value) {
        setState(() {
          isHover = false;
            controller.reset();
        });
      },
      child: Container(  margin: EdgeInsets.only(right: size.width * .01, top: isHover ? 0 : 10),
        width: size.width * .12,
        height: size.height,
        decoration: BoxDecoration(
          color: widget.artist.color2,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Container(
            width: size.width * .1,
            height: size.height*.2,
            decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(widget.music.imageUrl))),
            child: isHover?Stack(
                    children: [
                      AnimatedBuilder(
                        animation: controller,
                        builder: (BuildContext context, child) {
                       controller.repeat();
                        return Positioned(
                          bottom: animation.value,
                          right: size.width*.007,
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
                      },),
                    ],
                  ):SizedBox.shrink()

          ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width*.01),
              width: size.width,
              height: size.height*.05,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.music.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * .01),
                   overflow: TextOverflow.ellipsis,

                  ),
                  Row(children: [
                    Text(
                      widget.music.year,
                      style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * .008),),
                    Text(
                      " . ${widget.music.type}",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * .008),)
                  ],)
                 
                ],
              ),
            )

          ]
        ),
      ),
    );
  }
}
