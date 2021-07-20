import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class PopUp extends StatelessWidget {
  const PopUp({
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
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 650,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    title, 
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        height: 70.0,
                        width: 70.0,
                        image: AssetImage(imgLink),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 70,)
                ],
              ),
            )
          ),
          if (buttonText!="") 
            ElevatedButton(
              onPressed: () {}, 
              child: Text(buttonText),
            )
        ],
      )
    );
  }
}