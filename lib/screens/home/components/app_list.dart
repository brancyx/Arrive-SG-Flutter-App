import 'package:flutter/material.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/screens/home/components/communities.dart';

import '../../../size_config.dart';

class AppList extends StatelessWidget {
  const AppList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle( 
          title: "Apps To Download",
          press: () {},
        ),
        VerticalSpacing(of: 20),
        Container(
          height: 200.0,
          child: 
          Image.asset('assets/images/apps.png')
        )
      ],
    );
  }
}
