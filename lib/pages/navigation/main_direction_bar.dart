import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

 class MainDirectionBar extends StatefulWidget {
   //const MainDirectionBar({Key? key}) : super(key: key);

   @override
   _MainDirectionBarState createState() => _MainDirectionBarState();
 }

 class _MainDirectionBarState extends State<MainDirectionBar> {
   @override
   Widget build(BuildContext context) {
     return Container(
       // Generated code for this MainDirectionBar Widget...
         child:Padding(
           padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
           child: Material(
             color: Colors.transparent,
             elevation: 1,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(18),
             ),
             child: Container(
               width: MediaQuery.of(context).size.width * 0.95,
               height: 100,
               decoration: BoxDecoration(
                 color: Color(0xFF388E3C),
                 borderRadius: BorderRadius.circular(18),
                 border: Border.all(
                   color: Colors.transparent,
                   width: 0,
                 ),
               ),
               child: Padding(
                 padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisSize: MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Column(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Align(
                               alignment: Alignment(-1, 0),
                               child: Icon(
                                 Icons.alt_route_rounded,
                                 color: Colors.white,
                                 size: 50,
                               ),
                             ),
                             AutoSizeText(
                               '250 m',
                               minFontSize: 18,
                               style: TextStyle(
                                 fontFamily: 'Poppins',
                                 fontWeight: FontWeight.w500,
                                 color: Colors.white,
                               ),
                             )
                           ],
                         ),
                         Column(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Row(
                               mainAxisSize: MainAxisSize.min,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Align(
                                   alignment: Alignment(0, 0.05),
                                   child: AutoSizeText(
                                     'MUNNAR MAIN',
                                     minFontSize: 26,
                                     maxFontSize: 28,
                                     textAlign: TextAlign.start,
                                     style: TextStyle(
                                       fontFamily: 'Poppins',
                                       color: Colors.white,
                                     ),
                                   ),
                                 ),
                                 Padding(
                                   padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                   child: AutoSizeText(
                                     'Rd.',
                                     minFontSize: 18,
                                     maxFontSize: 20,
                                     textAlign: TextAlign.start,
                                     style: TextStyle(
                                       fontFamily: 'Poppins',
                                       color: Colors.white,
                                     ),
                                   ),
                                 ),
                                 Icon(
                                   Icons.brightness_1,
                                   color: Color(0xC4FF0000),
                                   size: 24,
                                 )
                               ],
                             )
                           ],
                         )
                       ],
                     )
                   ],
                 ),
               ),
             ),
           ),
         )
     );
   }
 }
