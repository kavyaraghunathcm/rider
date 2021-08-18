import 'package:flutter/material.dart';

class AdBanner extends StatefulWidget {
  //const AdBanner({Key? key}) : super(key: key);

  @override
  _AdBannerState createState() => _AdBannerState();
}

class _AdBannerState extends State<AdBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: // Generated code for this AddBannerWidget Widget...
      Align(
        alignment: Alignment(-1, 0.85),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '180 m',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Color(0xFFE91E63),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  color: Colors.red,
                  child: Center(
                    child: Text('Ad'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
