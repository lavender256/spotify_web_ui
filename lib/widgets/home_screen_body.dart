import 'package:flutter/material.dart';
import 'package:spotify_web_ui/widgets/ArtistWidget.dart';
import 'package:spotify_web_ui/widgets/artist_widget_card.dart';
import 'package:spotify_web_ui/widgets/good_afternoon_widget.dart';

import 'best_releases_widget.dart';

class HomeScreenBody extends StatefulWidget {
  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * .01),
        width: size.width * .64,
        height: size.height,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ArtistWidget(),
            SizedBox(
              height: size.height * .02,
            ),
            GoodAfternoonWidget(),
            SizedBox(
              height: size.height * .03,
            ),
            BestReleasesWidget(),
          ]),
        ));
  }
}
