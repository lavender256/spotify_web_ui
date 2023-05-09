import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/data/data.dart';

import 'artist_about_card.dart';

class ArtistAboutSlider extends StatefulWidget {
  @override
  State<ArtistAboutSlider> createState() => _ArtistAboutSliderState();
}

class _ArtistAboutSliderState extends State<ArtistAboutSlider> {
  CarouselController carouselController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .5,
        height: size.height * .55,
        child: Stack(
          children: [
            CarouselSlider.builder(
                carouselController: carouselController,
                itemCount: lanaDelReyPics.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return ArtistAboutCard(
                    imageUrl: lanaDelReyPics[index],
                  );
                },
                options: CarouselOptions(
                    height: size.height,
                    viewportFraction: 1,
                    autoPlay: false)),
            Positioned(
                bottom: size.height * .05,
                left: size.height * .05,
                child: IconButton(
                    icon: Icon(
                      FrinoIcons.f_arrow_left,
                      color: Colors.white,
                    ),
                    onPressed: () => carouselController.previousPage())),
            Positioned(
                bottom: size.height * .05,
                right: size.height * .05,
                child: IconButton(
                    icon: Icon(
                      FrinoIcons.f_arrow_right,
                      color: Colors.white,
                    ),
                    onPressed: () => carouselController.nextPage()))
          ],
        ));
  }
}
