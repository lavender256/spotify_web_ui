import 'package:flutter/material.dart';
import 'package:spotify_web_ui/data/data.dart';
import 'package:spotify_web_ui/model/music.dart';
import 'package:spotify_web_ui/widgets/release_card.dart';

class BestReleasesWidget extends StatefulWidget {

  @override
  State<BestReleasesWidget> createState() => _BestReleasesWidgetState();
}

class _BestReleasesWidgetState extends State<BestReleasesWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*.3,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Best Releases",style: TextStyle(fontFamily: "Ethn",color: Colors.white,fontWeight: FontWeight.w700,fontSize: size.width*.0095
          ),),
          Container(width: size.width,
            height: size.height*.27,
           // color: Colors.blue,
            child: ListView.builder(
                itemCount:musicList.length,scrollDirection:Axis.horizontal
                ,itemBuilder: (BuildContext context,int index){
                  Music music=musicList[index];
              return ReleaseCard(music: music,);
            }),
          )
        ],
      ),
    );
  }
}
