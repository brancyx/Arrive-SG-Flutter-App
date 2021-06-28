import 'package:flutter/material.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/screens/home/components/communities.dart';

import '../../../size_config.dart';
import '../../../size_config.dart';

class ReadGuide extends StatelessWidget {
  const ReadGuide({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle( 
          title: "Read Guide",
          press: () {},
        ),
        VerticalSpacing(of: 20),
        Container(
          height: 350.0,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: <Widget> [
                    Container(
                      height: 50,
                      width: 320,
                    ),
                    Container(
                      child: 
                      Hero(
                        tag: 'assets/images/work.png',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 70.0,
                            width: 70.0,
                            image: AssetImage('assets/images/work.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ]
                )
              ),
              VerticalSpacing(of:20),
              Container(
                child: Row(
                  children: <Widget> [
                    Container(
                      height: 50,
                      width: 320,
                    ),
                    Container(
                      child: 
                      Hero(
                        tag: 'assets/images/economy.png',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 70.0,
                            width: 70.0,
                            image: AssetImage('assets/images/economy.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ]
                )
              ),
              VerticalSpacing(of:20),
              Container(
                child: Row(
                  children: <Widget> [
                    Container(
                      height: 50,
                      width: 320,
                    ),
                    Container(
                      child: 
                      Hero(
                        tag: 'assets/images/family.png',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 70.0,
                            width: 70.0,
                            image: AssetImage('assets/images/family.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ]
                )
              ),
            ],
          ),
        ),
      ],
    );
  }
}
