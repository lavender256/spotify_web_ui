import 'package:flutter/material.dart';

class GoodAfternoonUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .06,
      height: size.height * .05,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: size.height*.01,
            bottom: size.height*.01,
            child: Container(
              width: size.width * .03,
              height: size.width * .03,
              decoration:
                  BoxDecoration(shape: BoxShape.circle
                  ,image: DecorationImage(image: NetworkImage("https://s8.uupload.ir/files/74_xfof.jpg"),fit: BoxFit.cover)
                  )
            ),
          ),
          Positioned( top: size.height*.01,
            bottom: size.height*.01,
            left: size.width*.01,
            child: Container(
              width: size.width * .03,
              height: size.width * .03,
              decoration:
              BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: NetworkImage("https://s8.uupload.ir/files/26_0fi0.jpg"),fit: BoxFit.cover),),
            ),
          ),
          Positioned( top: size.height*.01,
            bottom: size.height*.01,
            left: size.width*.02,
            child: Container(
              width: size.width * .03,
              height: size.width * .03,
              decoration:
              BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: NetworkImage("https://s8.uupload.ir/files/76_3zc.jpg"),fit: BoxFit.cover)),
            ),
          ),
          Positioned( top: size.height*.01,
            bottom: size.height*.01,
            left: size.width*.03,
            child: Container(
              width: size.width * .03,
              height: size.width * .03,
              decoration:
              BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: NetworkImage("https://s8.uupload.ir/files/36_meqh.jpg"),fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
