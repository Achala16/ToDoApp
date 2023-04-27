import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
   AppButton({
     super.key,
     required this.text,
     required this.onPressed
   } );

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,

      child: Text(text),
      color: Colors.cyan,



    );
  }
}
