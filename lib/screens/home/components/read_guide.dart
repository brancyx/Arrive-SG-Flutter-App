import 'package:flutter/material.dart';
import 'package:travel/components/read_row.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/components/pop_up.dart';
import 'package:travel/screens/home/components/communities.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../size_config.dart';
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
          height: 320.0,
          child: Column(
            children: [
              ReadRow(
                title: "How many hours do Singaporeans work every month?",
                imgLink: 'assets/images/work.png',
                description: "Container opened",
                buttonText: "View more",
              ),
              VerticalSpacing(of:20),
              ReadRow(
                title: "What is the average family spending per week",
                imgLink: 'assets/images/economy.png',
                description: "Container opened",
                buttonText: "View more",
              ),
              VerticalSpacing(of: 20,),
              ReadRow(
                title: "Defining the age of marriage in Singapore",
                imgLink: 'assets/images/family.png',
                description: "Container opened",
                buttonText: "View more",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
