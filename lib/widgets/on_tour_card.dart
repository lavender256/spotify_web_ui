import 'package:flutter/material.dart';

import '../color.dart';

class OnTourCard extends StatelessWidget {
final String mounth;
final String day;
final String nameTour;
final String location;

OnTourCard({this.mounth, this.day, this.nameTour, this.location});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.25,
      height: size.height*.1,
      child: Row(
        children: [
        Container(
          width: size.width*.05,
          height: size.height*.1,
          decoration: BoxDecoration(
            color: secColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(mounth,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: size.width*.013),),
              Text(day,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: size.width*.015),)
            ],
          ),
        ),
        SizedBox(width: size.width*.01,),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(nameTour,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: size.width*.011),),
          SizedBox(height: size.height*.01,),
          Text(location,style: TextStyle(color: Colors.white.withOpacity(.8),fontWeight: FontWeight.w400,fontSize: size.width*.009),)
        ],
        )
      ],),
    );
  }
}
