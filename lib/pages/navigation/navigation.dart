import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ridercompanion/pages/bottom_navigation_bar_scrollable.dart';
import 'package:ridercompanion/pages/navigation/main_direction_bar.dart';
import 'package:ridercompanion/pages/navigation/people_nearby_widget.dart';
import 'package:ridercompanion/pages/navigation/places_nearby_widget.dart';
import 'package:ridercompanion/pages/navigation/adbanner.dart';

class Navigation extends StatefulWidget {
  //const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool friendsVisibility=false;
  bool friendsIconVisibility=true;
  bool placesVisibility=false;
  bool placesIconVisibility=true;
  bool muteIconVisibility=false;
  bool audioIconVisibility=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            MainDirectionBar(),
            // FriendsIcon
            Visibility(
              visible: friendsIconVisibility,
              child: Align(
                alignment: Alignment(-0.95, -0.59),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0x9C000402),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: Alignment(0, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            friendsVisibility=true;
                            friendsIconVisibility=false;
                            muteIconVisibility=true;
                            audioIconVisibility=true;
                          });
                        },
                        icon: Icon(
                          Icons.location_history,
                          color: Color(0xFFFF0000),
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: friendsVisibility,
              child: PeopleNearby(
                  onDismiss: () {
                    setState(() {
                      friendsVisibility=false;
                      friendsIconVisibility=true;
                      muteIconVisibility=false;
                      audioIconVisibility=false;
                    });
                  }
              ),
            ),
            Visibility(
              visible: placesIconVisibility,
              child: Align(
                alignment: Alignment(0.92, -0.59),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0x9C000402),
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: Alignment(0.89, 0.46),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            placesIconVisibility=false;
                            placesVisibility=true;
                          });
                        },
                        icon: Icon(
                          Icons.place_outlined,
                          color: Colors.green[500],
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: placesVisibility,
              child: PlacesNearby(
                  onDismiss: () {
                    setState(() {
                      placesVisibility=false;
                      placesIconVisibility=true;
                    });
                  }
              ),
            ),
            BottomNavigationBarScrollable(),
            AdBanner(),
            // Mute Mic Button
            Align(
              alignment: Alignment(-1.0, -0.45),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Visibility(
                  visible: muteIconVisibility,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0x9C000402),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                      icon: Icon(
                        Icons.mic_sharp,
                        color: Colors.blue[200],
                        size: 30,
                      ),
                      iconSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            //Speaker Button
            Align(
              alignment: Alignment(-1.0, -0.59),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Visibility(
                  visible: audioIconVisibility,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0x9C000402),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                      icon: Icon(
                        Icons.volume_up_sharp,
                        color: Color(0xFFE91E63),
                        size: 30,
                      ),
                      iconSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
