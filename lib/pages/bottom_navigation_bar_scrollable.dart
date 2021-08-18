import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class BottomNavigationBarScrollable extends StatefulWidget {
  //const BottomNavigationScrollableBar({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarScrollableState createState() => _BottomNavigationBarScrollableState();
}

class _BottomNavigationBarScrollableState extends State<BottomNavigationBarScrollable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: // Generated code for this BottomNavigationWidget Widget...
      Align(
        alignment: Alignment(0, 1),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconButton(
                  onPressed: () async {
                    await Navigator.pushNamed(context, 'home');
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    color: Color(0xFFFF0000),
                    size: 30,
                  ),
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.pushNamed(context, '/home');
                    
                  },
                  child: Container(
                    width: 25,
                    height: 25,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/540/600',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconButton(
                  onPressed: () async {
                    await Navigator.pushNamed(context, '/home');
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.globeAmericas,
                    color: Colors.blue[800],
                    size: 30,
                  ),
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconButton(
                  onPressed: () async {
                    await Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(
                    Icons.local_hotel,
                    color: Color(0xFF388E3C),
                    size: 30,
                  ),
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconButton(
                  onPressed: () async {
                    await Navigator.pushNamed(context, '/home');
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.ticketAlt,
                    color: Color(0xFFE91E63),
                    size: 30,
                  ),
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconButton(
                  onPressed: () async {
                    await Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(
                    Icons.people_alt,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconButton(
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Color(0xFFFAFAFA),
                    size: 30,
                  ),
                  iconSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconButton(
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Color(0xFFFAFAFA),
                    size: 30,
                  ),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
