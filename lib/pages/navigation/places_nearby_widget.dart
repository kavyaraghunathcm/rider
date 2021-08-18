import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlacesNearby extends StatefulWidget {
  //const PlacesNearby({Key? key}) : super(key: key);
  final Function onDismiss;
  const PlacesNearby({Key key,this.onDismiss}):super(key:key);
  @override
  _PlacesNearbyState createState() => _PlacesNearbyState();
}

class Place{
  String imagePath;
  String colorImagePath;
  int distance;
  double rating;
  String detail1;
  String detail2;
  IconData icon;
  IconData direction;

  Place({this.imagePath,this.colorImagePath,this.distance,this.rating,this.detail1,this.detail2,this.icon,this.direction});
}
class _PlacesNearbyState extends State<PlacesNearby> {
  List<Place> places=[
    Place(
        imagePath: 'https://picsum.photos/seed/596/600',
        colorImagePath: 'assets/images/andyone-AgYHu8TyiMM-unsplash.jpg',
        distance: 200,
        rating: 3,
        detail1: 'Address Line 1',
        detail2: 'Details',
        icon: Icons.local_hotel,
        direction: Icons.directions_outlined,
        ),
    Place(
      imagePath: 'https://picsum.photos/seed/596/601',
      colorImagePath: 'assets/images/andyone-AgYHu8TyiMM-unsplash.jpg',
      distance: 400,
      rating: 1,
      detail1: 'Address Line 1',
      detail2: 'Details',
      icon: Icons.local_hospital,
      direction: Icons.directions_outlined,
    ),
    Place(
      imagePath: 'https://picsum.photos/seed/596/601',
      colorImagePath: 'assets/images/andyone-AgYHu8TyiMM-unsplash.jpg',
      distance: 500,
      rating: 5,
      detail1: 'Address Line 1',
      detail2: 'Details',
      icon: Icons.local_hospital,
      direction: Icons.directions_outlined,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0.97, -0.1),
      child: Dismissible(
        direction:DismissDirection.startToEnd,
        key: Key('key'),
        onDismissed:(direction) {this.widget.onDismiss();},
        child: Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: BoxDecoration(
              color: Color(0x00EEEEEE),
              shape: BoxShape.rectangle,
          ),
          child: Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: places.length,
              itemBuilder: (context,index) {
                return Align(
                  alignment: Alignment(1, -0.55),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.4,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.network(
                            places[index].imagePath,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            places[index].colorImagePath,
                            width: 100,
                            height: 20,
                            fit: BoxFit.fitWidth,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    places[index].detail1,
                                    minFontSize: 9,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                      Text(
                                        places[index].distance.toString(),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 11,
                                        ),
                                      ),
                                      RatingBarIndicator(
                                        itemBuilder: (context, index) =>
                                            Icon(
                                              Icons.star_rounded,
                                              color: Color(0xFFee8b60),
                                            ),
                                        direction: Axis.horizontal,
                                        rating: places[index].rating,
                                        unratedColor: Color(0xFF9E9E9E),
                                        itemCount: 5,
                                        itemSize: 10,
                                      )
                                    ],
                                  ),
                                  AutoSizeText(
                                    places[index].detail2,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                              Icon(
                                places[index].direction,
                                color: Colors.black,
                                size: 33,
                              ),
                              Icon(
                                places[index].icon,
                                color: Colors.blue[800],
                                size: 30,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
