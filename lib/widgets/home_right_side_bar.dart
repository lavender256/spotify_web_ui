import 'dart:math';

import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/color.dart';
import 'package:spotify_web_ui/widgets/right_side_bar_options.dart';
import 'package:spotify_web_ui/widgets/right_side_queue_card.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomeRightSideBar extends StatefulWidget {
  @override
  State<HomeRightSideBar> createState() => _HomeRightSideBarState();
}

class _HomeRightSideBarState extends State<HomeRightSideBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Container(
      width: size.width * .19,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
      ),
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.network("https://s8.uupload.ir/files/2_7dxy.jpg")
                      .blurred(blur: 5, blurColor: Colors.deepPurple),
                )),
          ),
          Container(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .02, vertical: size.height * .04),
              width: size.width,
              height: size.height,
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Now Playing".toUpperCase(),
                            style: TextStyle(
                                fontFamily: "Ethn",
                                color: mainColor,
                                fontWeight: FontWeight.w800,
                                fontSize: size.width * .01),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .03,
                        ),
                        Container(width: size.width ,
                          height: size.width * .13,
                          child: Stack(alignment: Alignment.center,
                            children: [
                              Container(
                                width: size.width * .11,
                                height: size.width * .11,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://s8.uupload.ir/files/63_s06q.jpg"))),
                              ),
                              Container(
                                child: CircularStepProgressIndicator(
                                  totalSteps: 20,
                                  currentStep: 12,
                                  stepSize: 20,
                                  padding: pi / 80,
                                  width: size.width * .13,
                                  height: size.width * .13,
                                  startingAngle: 0,
                                  arcSize: pi * 2 / 3 * 2,
                                  gradientColor: LinearGradient(
                                    colors: [mainColor, mainColor],
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom:0,right: 0,child: Text("03:32", style: TextStyle(letterSpacing:1.1,color:Colors.white ,fontWeight: FontWeight.w900,fontSize: size.width*.011),)),

                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text("04:17", style: TextStyle(letterSpacing:1.1,color: mainColor,fontWeight: FontWeight.w900,fontSize: size.width*.011),))
                            ],
                          ),
                        ),

                        SizedBox(
                          height: size.height * .02,
                        ),
                        Text(
                          "High By The Beach",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: size.width * .012),
                        ),
                        SizedBox(
                          height: size.height * .015,
                        ),
                        Text(
                          "Lana Del Rey",
                          style: TextStyle(

                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: size.width * .01),
                        ),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        Container(
                          width: size.width,
                          height: size.height * .1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(icon: Icon(
                                Iconsax.shuffle, color: Colors.white,
                                size: size.width * .013,), onPressed: null),
                              IconButton(icon: Icon(
                                Iconsax.backward5, color: Colors.white,
                                size: size.width * .017,), onPressed: null),
                              Container(
                                  width: size.width * .04,
                                  height: size.width * .04,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                  child: Center(child: IconButton(icon: Icon(
                                    Iconsax.pause5, color: mainColor,
                                    size: size.width * .015,),
                                      onPressed: null))),
                              IconButton(icon: Icon(
                                Iconsax.forward5, color: Colors.white,
                                size: size.width * .017,), onPressed: null),
                              IconButton(icon: Icon(
                                Iconsax.repeat5, color: Colors.white,
                                size: size.width * .013,), onPressed: null),

                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * .04,
                        ),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Your Queue".toUpperCase(),
                            style: TextStyle(
                                fontFamily: "Ethn",
                                color: mainColor,
                                fontWeight: FontWeight.w800,
                                fontSize: size.width * .01),
                          ),
                        ), SizedBox(
                          height: size.height * .02,
                        ),
                        RightSideQueueCard(
                          song: "Ride",
                          singer: "Lana Del Rey",
                        ),
                        RightSideQueueCard(
                          song: ' Beggin For Thread',
                          singer: "Banks",
                        )
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
