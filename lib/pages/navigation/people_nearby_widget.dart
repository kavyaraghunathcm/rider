import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class PeopleNearby extends StatefulWidget {
  //const PeopleNearby({Key? key}) : super(key: key);
  final Function onDismiss;

  const PeopleNearby({Key key, this.onDismiss}) : super(key: key);
  @override
  _PeopleNearbyState createState() => _PeopleNearbyState();
}
class People{
  String name;
  bool isHost;
  int distance;
  People({this.name,this.isHost,this.distance} );
}


class _PeopleNearbyState extends State<PeopleNearby> {
  List<People> people =[
      People(name: 'Freind1',isHost: false,distance: 120),
      People(name: 'Freind2',isHost: false,distance: 45),
      People(name: 'Freind3',isHost: false,distance: 34),
      People(name: 'Freind4',isHost: false,distance: 68),
      People(name: 'Freind5',isHost: false,distance: 150),
      People(name: 'Freind6',isHost: true,distance: 170),
    ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-1.0, -0.20),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Dismissible(
          direction:DismissDirection.endToStart,
          key: Key('key'),
          onDismissed: (direction){
            this.widget.onDismiss();
          },
          child:  Container(
            width: MediaQuery.of(context).size.width * 0.4,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.4,
              maxHeight: MediaQuery.of(context).size.height * 0.20,
            ),
            decoration: BoxDecoration(
              color: Color(0x62232121),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: people.length,
                      itemBuilder: (context,index) {
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              people[index].name,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.globeAfrica,
                              color: Color(0xFFE91E63),
                              size: people[index].isHost?15:0,
                            ),
                            AutoSizeText(
                              people[index].distance.toString(),
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'Monofett',
                                color: Colors.yellow,
                                fontSize: 18,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                         ]
                        );
                      }
                    ),
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
