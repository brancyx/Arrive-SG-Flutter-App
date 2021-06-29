import 'package:flutter/material.dart';
import 'package:travel/components/section_title.dart';
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
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(kDefaultPadding),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      child: Text(
                        "How many hours do Singaporeans work every month?",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: getProportionateScreenWidth(13),
                        ),
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 70.0,
                            width: 70.0,
                            image: AssetImage('assets/images/work.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                  ],
                ),
              ),
              VerticalSpacing(of:20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(kDefaultPadding),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      child: Text(
                        "What is the average family spending per week",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: getProportionateScreenWidth(13),
                        ),
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 70.0,
                            width: 70.0,
                            image: AssetImage('assets/images/economy.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                  ],
                ),
              ),
              VerticalSpacing(of: 20,),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(kDefaultPadding),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      child: Text(
                        "Defining the age of marriage in Singapore",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: getProportionateScreenWidth(13),
                        ),
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 70.0,
                            width: 70.0,
                            image: AssetImage('assets/images/family.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
