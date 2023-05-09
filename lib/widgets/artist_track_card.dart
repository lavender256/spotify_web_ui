import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/model/music.dart';

class ArtistTrackCard extends StatefulWidget {
  final int index;
  final Music music;

  ArtistTrackCard({this.index, this.music});

  @override
  _ArtistTrackCardState createState() => _ArtistTrackCardState();
}

class _ArtistTrackCardState extends State<ArtistTrackCard> {
  bool isFavourite = false;
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){},
      onHover: (value){
        setState(() {
          isHover=value;
        });
      },
      child: Container(
        width: size.width * .8,
        height: size.height * .06,
        decoration:BoxDecoration(
            color:  isHover?Colors.white.withOpacity(.1):Colors.transparent,
          border: Border.all(color: isHover?Colors.white.withOpacity(.5):Colors.transparent)
        ),
        child: Row(
          children: [
            Container(
                width: size.width * .025,
                child: Text(
                  "0${widget.index + 1}",
                  style: TextStyle(color: Colors.white.withOpacity(.5)),
                )),
            Container(
                width: size.width * .085,
                child: IconButton(
                  icon: Icon(
                    isFavourite ? Iconsax.heart5 : Iconsax.heart,
                    color: isFavourite
                        ? Colors.red
                        : Colors.white.withOpacity(.7),
                  ),
                  onPressed: () {
                    setState(() {
                      isFavourite = !isFavourite;
                    });
                  },
                )),
            Container(
                width: size.width * .13,
                child: Text(
                  widget.music.name,
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
                )),
            Container(
                width: size.width * .138,
                child: Text(
                  widget.music.singer,
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
                )),
            Container(
                width: size.width * .16,
                child: Text("32421",
                    style: TextStyle(color: Colors.white.withOpacity(.5)))),
            Container(
                width: size.width * .12,
                child: Text("04:47",
                    style: TextStyle(color: Colors.white.withOpacity(.5)))),
            Container(
              width: size.width * .13,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: Icon(
                        Iconsax.share,
                        color: Colors.white,
                      ),
                      onPressed: null),
                  IconButton(
                      icon: Icon(
                        Iconsax.message,
                        color: Colors.white,
                      ),
                      onPressed: null),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Iconsax.more,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
