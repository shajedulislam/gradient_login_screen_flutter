import 'package:flutter/material.dart';
import 'package:gradient_login_screens/screenParts/1_topClipper.dart';
import 'package:gradient_login_screens/screenParts/2_logo.dart';
import 'package:gradient_login_screens/screenParts/3_textFieldContainer.dart';
import 'package:gradient_login_screens/screenParts/4_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var devSize = MediaQuery.of(context).size.shortestSide;
    var spaceLeftRight;
    double sBoxHeight;
    double defFontSize;
    double logoFontSize;
    double iconSize;
    double cardButtonGap;
    if (devSize <= 400) {
      spaceLeftRight = (devSize - devSize * 95 / 100);
      sBoxHeight = 20;
      defFontSize = 16;
      logoFontSize = 20;
      iconSize = 100;
      cardButtonGap = 20;
    } else if (devSize > 400 && devSize <= 700) {
      spaceLeftRight = (devSize - devSize * 95 / 100);
      sBoxHeight = 50;
      defFontSize = 18;
      logoFontSize = 26;
      iconSize = 150;
      cardButtonGap = 50;
    } else if (devSize > 700) {
      spaceLeftRight = (devSize - devSize * 85 / 100);
      sBoxHeight = 100;
      defFontSize = 20;
      logoFontSize = 36;
      iconSize = 250;
      cardButtonGap = 70;
    }
    //Note : Above configuration is to make it responsive. Yes there are other ways
    //but I like to do it by my own !

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          //The clipper path used to design that you are seeing on top side !
          ClipDesign(),

          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Logo
                    Logo(iconSize),

                    SizedBox(height: sBoxHeight), // Just a space

                    //App Name
                    Text(
                      'TEXT',
                      style: TextStyle(
                          fontSize: logoFontSize,
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: sBoxHeight), // Just a space

                    //Textfields
                    TextFieldContainer(defFontSize, spaceLeftRight),

                    // Space between Textfields and Login button
                    SizedBox(height: cardButtonGap),

                    //Login Button
                    Button(defFontSize, spaceLeftRight),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
