import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:spotify_web_ui/color.dart';
import 'package:spotify_web_ui/screens/discover_screen.dart';
import 'package:spotify_web_ui/screens/home_screen.dart';
import 'package:spotify_web_ui/widgets/left_side_bar_option.dart';

class HomeLeftSideBar extends StatefulWidget {
  @override
  State<HomeLeftSideBar> createState() => _HomeLeftSideBarState();
}

class _HomeLeftSideBarState extends State<HomeLeftSideBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .03, vertical: size.height * .04),
      width: size.width * .17,
      height: size.height,
      color: secColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * .08,
            height: size.height * .05,
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.fitWidth,
                image: NetworkImage("https://s8.uupload.ir/files/0_3gp1.png")
              )
            ),
          ),
          SizedBox(height: size.height*.03,),
          Text(
            "Browse Music".toUpperCase(),
            style: TextStyle(fontFamily: 'Ethn',
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: size.width * .0085),
          ),
          SizedBox(height: size.height*.022,),
          GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen())),
              child: LeftSideBarOptions(isHome:true,title: "Home",icon: Iconsax.home,)),
          GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>DiscoverScreen())),
              child: LeftSideBarOptions(title: "Discover",icon: Iconsax.discover,)),
          LeftSideBarOptions(title: "Song",icon: Iconsax.music,),
          LeftSideBarOptions(title: "Artist",icon: FrinoIcons.f_male),
          LeftSideBarOptions(title: "Podcasts",icon: Iconsax.microphone,),
          SizedBox(height: size.height*.04,),
          Text(
            "Your Music".toUpperCase(),
            style: TextStyle(fontFamily: "Ethn",
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: size.width * .0085),
          ),
          SizedBox(height: size.height*.022,),
          LeftSideBarOptions(title: "Favourites",icon: Iconsax.heart,),
          LeftSideBarOptions(title: "History",icon: Iconsax.arrow_circle_down,),
          LeftSideBarOptions(title: "Mixes",icon: FrinoIcons.f_company),
          LeftSideBarOptions(title: "Local Files",icon: Iconsax.electricity,),
          SizedBox(height: size.height*.04,),
          Text(
            "Your PlayLists".toUpperCase(),
            style: TextStyle(fontFamily: "Ethn",
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: size.width * .008),
          ),
          SizedBox(height: size.height*.022,),
          LeftSideBarOptions(title: "Force Work",haveIcon: false,),
          LeftSideBarOptions(title: "Futurs Hits",haveIcon: false,),
          LeftSideBarOptions(title: "Fly Tonight",haveIcon: false,),

        ],
      ),
    );
  }
}
