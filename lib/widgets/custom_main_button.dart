import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget{
  String buttonText;
  Function() onPressed;
  Color color;
  Color textColor;
  CustomButton({
    Key? key,
    required this.color,
    required this.textColor,
    required this.buttonText,
    required this.onPressed
}) : super (key: key);
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        onSurface: Colors.red,
            elevation: 0,
        primary: color,
        minimumSize: Size(336,44),
        maximumSize: Size(336,44),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),

      ),
        onPressed: onPressed,
        child:Text(buttonText,
          style: TextStyle(fontSize: 16,
              color: textColor),
        ));
  }
}