

import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:wishway/platforms/home.dart';



class ResponsiveBuild extends StatefulWidget {
  const ResponsiveBuild({ Key? key }) : super(key: key);

  @override
  State<ResponsiveBuild> createState() => _ResponsiveBuildState();
}

class _ResponsiveBuildState extends State<ResponsiveBuild> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ResponsiveBuilder(builder: (context, sizeInfo) {
      
       

      return HomePage(sizeInfo: sizeInfo,);
    }),
  );
  }
}
