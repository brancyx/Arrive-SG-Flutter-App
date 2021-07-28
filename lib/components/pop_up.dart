import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


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
                    child: Image.asset(
                      imgLink,
                      width: 250,
                    ),
                  ),
                  SizedBox(height: 70,),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black
                    ),
                  ),
                ],
              ),
            )
          ),
          if (buttonText!="") 
            ElevatedButton(
              onPressed: () {
                launch('https://brancyx.github.io/my-portfolio/#/');
              }, 
              child: Text(buttonText),
            )
        ],
      )
    );
  }
}