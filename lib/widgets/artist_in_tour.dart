import 'package:flutter/material.dart';

import 'on_tour_card.dart';

class ArtistInTour extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*.1),
      width: size.width,
      height: size.height*.37,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "On Tour",
            style: TextStyle(fontFamily: "Ethn",
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: size.width * .011),
          ),
          Row(
            children: [
              OnTourCard(mounth: "May",day: "27",nameTour: "MITA Festival 2023",location: "Sat 8:00 PM - Jockey Club, Rio de Janeiro",),
              SizedBox(width: size.width*.02,),
              OnTourCard(mounth: "Aug",day: "3",nameTour: "2023 Lollapalooza - Sunday",location: "Sat 8:00 PM - Jockey Club, Rio de Janeiro",),
              SizedBox(width: size.width*.02,),
              OnTourCard(mounth: "Jan",day: "3",nameTour: "MITA Festival 2023",location: "Sat 8:00 PM - Jockey Club, Rio de Janeiro",)
            ],
          ),
          Row(
            children: [
              OnTourCard(mounth: "Aug",day: "6",nameTour: "Lollapalooza",location: "Sat 8:00 PM - Jockey Club, Rio de Janeiro",),
              SizedBox(width: size.width*.02,),
              OnTourCard(mounth: "Aug",day: "11",nameTour: "Outside Lands",location: "Sat 8:00 PM - Jockey Club, Rio de Janeiro",),
            ],
          )
        ],
      ),
    );
  }
}
