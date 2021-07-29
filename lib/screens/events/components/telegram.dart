import 'package:flutter/material.dart';
import 'package:travel/components/group_card.dart';
import 'package:travel/components/place_card.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/models/Group.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Telegram extends StatelessWidget {
  const Telegram({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle( 
          title: "Telegram",
          press: () {},
        ),
        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                telegramGroups.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(kDefaultPadding)),
                  child: GroupCard(
                    group: telegramGroups[index],
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
