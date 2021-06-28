import 'package:flutter/material.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/screens/home/components/communities.dart';

import '../../../size_config.dart';

class CommunityGuide extends StatelessWidget {
  const CommunityGuide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle( 
          title: "Community Guide",
          press: () {},
        ),
        VerticalSpacing(of: 20),
        Container(
          height: 220.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: communities.length,
            itemBuilder: (BuildContext context, int index) {
              Community community = communities[index];
              return GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        AlertDialog(
                      content: new Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 650,
                            width: 400,
                            child: new Padding(
                              padding: const EdgeInsets.all(8.0),
                                child: Column(

                                children: [
                                  Container(
                                    child: Center(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment
                                                .start,
                                        mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                        children: <Widget>[
                                          Center(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                        width:
                                                            5),
                                                    Text(
                                                      community.city,
                                                      style: const TextStyle(
                                                          fontSize:
                                                              25,
                                                          color:
                                                              Colors.black,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                    height:
                                                        10),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .only(
                                                      top:
                                                          0.0),
                                                  child: Image
                                                      .asset(
                                                    community.imageUrl,
                                                    width:
                                                        250.0,
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:
                                                        50),
                                                
                                                SizedBox(
                                                    height:
                                                        20),
                                                
                                              ],
                                            ),
                                            
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column (
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget> [
                                      Container(
                                        child: Text(
                                          community.country,
                                          style: const TextStyle(
                                              fontSize:
                                                  10,
                                              color:
                                                  Colors.black),
                                        ),
                                      )
                                    ]
                                  ),
                                  SizedBox(height: 15),
                                ],
                            ),
                          ),
                          ),
                          ElevatedButton(
                            onPressed: () {}, 
                            child: Text("View Available Apartments")
                            )
                        ],
                      ),
                    ),
                  );
                },
                // => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => DestinationScreen(
                //       destination: destination,
                //     ),
                //   ),
                // ),
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  width: 210.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 120.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Text(
                                //   community.description,
                                //   // '${destination.activities.length} activities',
                                //   style: TextStyle(
                                //     fontSize: 15.0,
                                //     fontWeight: FontWeight.w600,
                                //     letterSpacing: 1.2,
                                //   ),
                                // ),
                                // Text(
                                //   community.description,
                                //   style: TextStyle(
                                //     color: Colors.grey,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: community.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height: 180.0,
                                  width: 180.0,
                                  image: AssetImage(community.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    community.city,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      // Icon(
                                      //   FontAwesomeIcons.locationArrow,
                                      //   size: 10.0,
                                      //   color: Colors.white,
                                      // ),
                                      SizedBox(width: 5.0),
                                      Text(
                                        community.description,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
