import 'package:flutter/material.dart';
import 'package:spotify_web_ui/model/fans_also.dart';

class FansAlsoCard extends StatelessWidget {
  final FansAlso fansAlso;
final Color  color;
  FansAlsoCard({this.fansAlso,this.color});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: size.width*.02),
      width: size.width * .14,
      height: size.width * .13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        Container(
          width: size.width * .11,
          height: size.width * .11,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(fansAlso.imageUrl), fit: BoxFit.fill)),
        ),
        Text(
          fansAlso.name,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: size.width * .012),
        )
      ]),
    );
  }
}
