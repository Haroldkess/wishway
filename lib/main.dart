
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishway/designs/params.dart';
import 'package:wishway/statemanager/responsivestates.dart';
import 'package:wishway/widgets/sizebuilder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ResponsiveManager(),
    ),], child: 
    
     MaterialApp(
      title: webAppName,
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ResponsiveBuild(),
    ));
  }
}
