import 'package:flutter/material.dart';
import 'package:travel/components/app_bar.dart';
import 'package:travel/components/custom_bottom_nav_bar.dart';
import 'package:travel/screens/home/components/app_list.dart';
import 'package:travel/screens/home/components/community_guide.dart';

import '../../size_config.dart';
import 'components/home_header.dart';
import 'components/read_guide.dart';
import 'components/top_travelers.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call SizeConfig on your starting page
    SizeConfig().init(context);
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            HomeHeader(),
            VerticalSpacing(),
            CommunityGuide(),
            VerticalSpacing(),
            ReadGuide(),
            VerticalSpacing(),
            AppList(),
          ],
        ),
      ),
    );
  }
}
