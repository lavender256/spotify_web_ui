import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_web_ui/color.dart';

//import 'package:spotify_web_ui/color.dart';
import 'package:spotify_web_ui/data/data.dart';
import 'package:spotify_web_ui/model/artist.dart';
import 'package:spotify_web_ui/model/music.dart';
import 'package:spotify_web_ui/tabs/around_tab.dart';
import 'package:spotify_web_ui/tabs/mood_tab.dart';
import 'package:spotify_web_ui/tabs/rec_tab.dart';
import 'package:spotify_web_ui/tabs/reles_tab.dart';
import 'package:spotify_web_ui/tabs/topch_tab.dart';
import 'package:spotify_web_ui/widgets/artist_about.dart';
import 'package:spotify_web_ui/widgets/artist_in_tour.dart';
import 'package:spotify_web_ui/widgets/artist_screen_fans_also.dart';
import 'package:spotify_web_ui/widgets/artist_screen_gradient.dart';
import 'package:spotify_web_ui/widgets/artist_screen_id.dart';
import 'package:spotify_web_ui/widgets/artist_screen_playlist.dart';
import 'package:spotify_web_ui/widgets/artist_music_card.dart';

class ArtistScreen extends StatefulWidget {
  final Artist artist;

  ArtistScreen({this.artist});

  @override
  State<ArtistScreen> createState() => _ArtistScreenState();
}

class _ArtistScreenState extends State<ArtistScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              image: NetworkImage(widget.artist.bigImage),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * .9,
                  child: Stack(
                    children: [
                      ArtistScreenGradient(artist: widget.artist),
                      Positioned(
                          left: size.width * .1,
                          top: size.height * .16,
                          child: ArtistScreenId(
                            artist: widget.artist,
                          )),
                      Positioned(
                          top: size.height * .465,
                          left: size.width * .08,
                          child: Container(
                            width: size.width * .8,
                            height: 3,
                            color: Colors.white.withOpacity(.5),
                          )),
                      Positioned(
                        top: size.height * .43,
                        left: size.width * .1,
                        child: Container(
                          width: size.width * .7,
                          height: size.height * .04,
                          child: TabBar(
                            indicatorWeight: 4,
                            controller: tabController,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.white.withOpacity(.7),
                            labelStyle: TextStyle(fontWeight: FontWeight.w900,fontFamily: "Ethn",),
                            indicatorColor: widget.artist.color2,
                            tabs: [
                              Tab(
                                text: "Recommended".toUpperCase(),
                              ),
                              Tab(
                                text: "New Releases".toUpperCase(),
                              ),
                              Tab(
                                text: "Top Charts".toUpperCase(),
                              ),
                              Tab(
                                text: "Moods".toUpperCase(),
                              ),
                              Tab(
                                text: "Around You".toUpperCase(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: size.height * .51,
                          left: size.width * .1,
                          child: Container(
                            width: size.width * .8,
                            height: size.height * .5,
                            child: TabBarView(
                              children: [
                                RecTab(),
                                RelesTab(),
                                TopChTab(),
                                MoodTab(),
                                AroundTab()
                              ],
                              controller: tabController,
                            ),
                          )),
                      Positioned(
                          top: size.height * .05,
                          left: size.width * .03,
                          child: Container(
                            width: size.width * .1,
                            height: size.height * .07,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: NetworkImage("https://s8.uupload.ir/files/0_3gp1.png"))),
                          )),
                    ],
                  ),
                ),
                Container(width: size.width,
                color: widget.artist.color,
                  child: Column(
                    children: [
                      ArtistScreenPlayList(
                        artist: widget.artist,
                        list: singleMusicList,
                        title: "Singles",
                      ),
                      ArtistScreenPlayList(
                        list: popularMusicList,
                        artist: widget.artist,
                        title: "Popular Release",
                      ),
                      ArtistScreenPlayList(
                        list: albumsMusicList,
                        artist: widget.artist,
                        title: "Albums",
                      ),
                      ArtistInTour(),
                      ArtistScreenFansAlso(
                     artist: widget.artist,
                      ),
                      ArtistAbout(artist: widget.artist,),
                      SizedBox(height: size.height*.1,)
                    ],
                  ),
                )

              ],
            ),
          )),
    );
  }
}
