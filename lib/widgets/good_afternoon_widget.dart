import 'package:flutter/material.dart';
import 'package:spotify_web_ui/data/data.dart';
import 'package:spotify_web_ui/model/mix.dart';

import 'good_afternoon_card.dart';

class GoodAfternoonWidget extends StatefulWidget {


  @override
  State<GoodAfternoonWidget> createState() => _GoodAfternoonWidgetState();
}

class _GoodAfternoonWidgetState extends State<GoodAfternoonWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*.2,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Good Afternoon",style: TextStyle(fontFamily: "Ethn",color: Colors.white,fontSize: size.width*.0095,fontWeight: FontWeight.w700),),
          Container(width: size.width,
          height: size.height*.14,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
                itemCount:mixList.length,scrollDirection:Axis.horizontal
                ,itemBuilder: (BuildContext context,int index){
                  Mix mix=mixList[index];
              return GoodAfternoonCard(mix: mix,);
            }),
          )
        ],
      ),
    );
  }
}
