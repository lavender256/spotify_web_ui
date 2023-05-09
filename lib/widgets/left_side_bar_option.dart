import 'package:flutter/material.dart';
import 'package:spotify_web_ui/color.dart';

class LeftSideBarOptions extends StatelessWidget {
final IconData icon;
final String title;
final bool isHome;
final bool haveIcon;
LeftSideBarOptions({this.icon, this.title,this.isHome=false,this.haveIcon=true});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.11,
      height: size.height*.05,
      child: haveIcon?Row(
        children: [
          Icon(icon,size: size.width*.015,color: isHome?mainColor:Colors.white,),
          SizedBox(width: size.width*.012,),
          Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: size.width*.007,fontFamily: "Ethn"))
      ],):Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: size.width*.007,fontFamily: "Ethn"))
    );
  }
}
