import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_web_ui/model/browse.dart';

class DiscoverCard extends StatefulWidget {
  final Browse browse;

  DiscoverCard({this.browse});

  @override
  State<DiscoverCard> createState() => _DiscoverCardState();
}

class _DiscoverCardState extends State<DiscoverCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.browse.color
      ),
      child: Stack(
        children: [
          Positioned(
              left: size.width*.01,
              top: size.height*.02,
              child: Text(widget.browse.title, style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900,fontSize: size.width*.015),)),
          Positioned(
              right: -15,
              bottom: -5,
              child: Transform.rotate(
                angle: pi/6.5,
                child: Container(width: size.width * .065,
                  height: size.width * .065,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   image: DecorationImage(fit: BoxFit.cover,
                     image: NetworkImage(widget.browse.imageUrl)
                   )
                 ),
                ),
              ))
        ],
      ),
    );
  }
}
