import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPressed;

  CustomButton({@required this.buttonTitle, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.indigo,
      textColor: Colors.white,
      minWidth: 220,
      height: 45,
      child: Text(
        buttonTitle,
        style: TextStyle(fontSize: 18),
      ),
      onPressed: onPressed,
    );
  }
}
