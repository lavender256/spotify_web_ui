import 'package:flutter/material.dart';
import 'package:spotify_web_ui/color.dart';
import 'package:spotify_web_ui/model/browse.dart';
import 'package:spotify_web_ui/widgets/discover_card.dart';
import 'package:spotify_web_ui/widgets/home_left_side_bar.dart';
import 'package:spotify_web_ui/data/data.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          width: size.width,
          height: size.height,
          child: Row(
            children: [
              HomeLeftSideBar(),
              Container(
                width: size.width * .83,
                height: size.height,
                child: CustomScrollView(
                  slivers: [
                SliverPadding(
                padding: EdgeInsets.only(
                left: size.width * .015,
                    top: size.height * .08),
                  sliver: SliverToBoxAdapter(child: Text("Browse all",style: TextStyle(fontFamily: "Ethn",color: Colors.white,fontSize: size.width*.012,fontWeight: FontWeight.bold),)),
                ),
                    SliverPadding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * .015,
                          vertical: size.height * .04),
                      sliver: SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                Browse browse=browseList[index];
                            return DiscoverCard(browse: browse,);
                          }, childCount: 24),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 6,
                                  mainAxisSpacing: size.width * .015,
                                  crossAxisSpacing: size.width * .015)),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
