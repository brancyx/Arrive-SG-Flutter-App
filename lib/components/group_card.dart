import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel/models/Group.dart';
import 'package:travel/models/TravelSpot.dart';
import 'package:travel/models/User.dart';

import '../constants.dart';
import '../size_config.dart';
import 'pop_up.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({
    Key key,
    @required this.group,
  }) : super(key: key);

  final Group group;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) =>
            PopUp(
              title: group.name,
              imgLink: group.image,
              description: group.name,
              buttonText: "Join group",
            ),
        );
      },
      child: SizedBox(
        width: getProportionateScreenWidth(137),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.29,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage(group.image), fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              width: getProportionateScreenWidth(137),
              padding: EdgeInsets.all(
                getProportionateScreenWidth(kDefaultPadding),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kDefualtShadow],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    group.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  VerticalSpacing(of: 10),
                  Members(
                    users: group.users,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Members extends StatelessWidget {
  const Members({
    Key key,
    @required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ...List.generate(
            users.length,
            (index) {
              totalUser++;
              return Positioned(
                left: (22 * index).toDouble(),
                child: buildMemberFace(index),
              );
            },
          ),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: Container(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildMemberFace(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
