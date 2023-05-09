import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spotify_web_ui/data/data.dart';
import 'package:spotify_web_ui/model/artist.dart';
import 'package:spotify_web_ui/screens/artist_screen.dart';
import 'package:spotify_web_ui/widgets/artist_widget_card.dart';

class ArtistWidget extends StatefulWidget {
  @override
  State<ArtistWidget> createState() => _ArtistWidgetState();
}

class _ArtistWidgetState extends State<ArtistWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .32,
      child: CarouselSlider.builder(
          itemCount: artistList.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            Artist artist =artistList[index];
            return GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ArtistScreen(artist: artist,))),
                child: ArtistWidgetCard(artist: artist,));
          },
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            reverse: true
          )),
    );
  }
}
