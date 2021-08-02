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
            height: getProportionateScreenHeight(455),
            width: getProportionateScreenWidth(400),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
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
                    // SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Image.asset(
                        imgLink,
                        width: 200,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),
                    ),
                  ],
                ),
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