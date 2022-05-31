import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  NavButton({
    required this.BgColour,
    required this.CallBackFunction,
    required this.ButtonText,

  });

  final Color BgColour;
  final Text ButtonText;
  final VoidCallback CallBackFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: BgColour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: CallBackFunction,
          minWidth: 200.0,
          height: 42.0,
          child: ButtonText,
        ),
      ),
    );
  }
}