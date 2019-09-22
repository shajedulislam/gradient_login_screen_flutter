import 'package:flutter/material.dart';
import 'package:gradient_login_screens/reusableWidgets/containerBoxDecoration.dart';
import 'package:gradient_login_screens/reusableWidgets/customTextField.dart';
import 'package:gradient_login_screens/reusableWidgets/gradientColor.dart';

class TextFieldContainer extends StatelessWidget {
  final double defFontSize;
  final spaceLeftRight;
  TextFieldContainer(this.defFontSize, this.spaceLeftRight);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: spaceLeftRight, right: spaceLeftRight),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: ContainerBox.getBoxDecoration(
                  shadowColor: Colors.black.withOpacity(0.0),
                  blurRadius: 13,
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 50,
                  bottom: 50,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: GradientColor.getGradientColor(),
                ),
                child: Column(
                  children: <Widget>[
                    CustomTextField(defFontSize, 'MOBILE NUMBER'),
                    SizedBox(height: 30),
                    CustomTextField(defFontSize, 'PASSWORD'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//With card
// Card(
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Container(
//         padding: EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           gradient: GradientColor.getGradientColor(),
//         ),
//         child: Column(
//           children: <Widget>[
//             CustomTextFieldCR(18, 'MOBILE NUMBER'),
//             SizedBox(height: 30),
//             CustomRaisedButtonCR(18),
//           ],
//         ),
//       ),
//     );
