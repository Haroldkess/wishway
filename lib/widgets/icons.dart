import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChopAppSvg extends StatelessWidget {
  Color? color;
  String icon;
  double? size;

  ChopAppSvg({Key? key, this.color, required this.icon, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
    );
  }
}
