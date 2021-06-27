import 'package:flutter/material.dart';
import 'package:travel/components/app_bar.dart';
import 'package:travel/components/custom_bottom_nav_bar.dart';
import 'package:travel/screens/events/components/facebook.dart';
import 'package:travel/screens/events/components/instagram.dart';
import 'package:travel/screens/events/components/telegram.dart';

import '../../components/place_card.dart';
import '../../constants.dart';
import '../../models/TravelSpot.dart';
import '../../size_config.dart';
import '../home/components/read_guide.dart';
import '../home/components/top_travelers.dart';
import 'components/body.dart';

// class EventsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(context, title: "New Events"),
//       body: Body(),
//       bottomNavigationBar: CustomBottonNavBar(),
//     );
//   }
// }

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call SizeConfig on your starting page
    SizeConfig().init(context);
    return SizedBox(
      width: SizeConfig.screenWidth,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0,100.0,0.0,0.0),
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                VerticalSpacing(),
                Telegram(),
                VerticalSpacing(),
                FacebookGroups(),
                VerticalSpacing(),
                InstaToFollow(),
                VerticalSpacing(),
                VerticalSpacing(of: 200,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

