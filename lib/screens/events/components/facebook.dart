import 'package:flutter/material.dart';
import 'package:travel/components/group_card.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/models/Group.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class FacebookGroups extends StatelessWidget {
  const FacebookGroups({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle( 
          title: "Facebook Groups",
          press: () {},
        ),
        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                facebookGroups.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(kDefaultPadding)),
                  child: GroupCard(
                    group: facebookGroups[index],
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
