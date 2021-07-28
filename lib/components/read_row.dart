import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import 'pop_up.dart';

class ReadRow extends StatelessWidget {
  const ReadRow({
    Key key,
    @required this.title,
    @required this.description,
    @required this.imgLink,
    this.buttonText = "",
  }) : super(key: key);

  final String title;
  final String description;
  final String imgLink;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) =>
            PopUp(
              title: title,
              imgLink: imgLink,
              description: description,
              buttonText: buttonText,
            ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultPadding),
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 250,
              child: Text(
                title,
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
                image: AssetImage(imgLink),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}