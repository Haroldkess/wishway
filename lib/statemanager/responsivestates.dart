import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveManager extends ChangeNotifier {
   bool?  show = false ;

  bool get getShow => show!;

  void addSize(bool atBottom) {
    show = atBottom;
    notifyListeners();
  }
}
