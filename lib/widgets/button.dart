import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishway/designs/colors.dart';
import 'package:wishway/designs/params.dart';

class ChowElevatedButton extends StatefulWidget {
  Widget child;
  ChowElevatedButton({Key? key, required this.child}) : super(key: key);

  @override
  State<ChowElevatedButton> createState() => _ChowElevatedButtonState();
}

class _ChowElevatedButtonState extends State<ChowElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {},
        style: ElevatedButton.styleFrom(
          primary: HexColor('#F8842F'),
          shadowColor: HexColor('#F8842F'),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: symmetric - 5, vertical: symmetric - 5),
          child: widget.child,
        ));
  }
}
