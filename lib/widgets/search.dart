
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishway/designs/colors.dart';
import 'package:wishway/designs/params.dart';
import 'package:wishway/responsive/responsiveConfig.dart';
import 'package:wishway/widgets/text.dart';

Widget searchField(BuildContext context, TextEditingController controller) {
  return Container(
    height: 50,
    width: Responsive.isDesktop(context)
        ? MediaQuery.of(context).size.width / 4
        : MediaQuery.of(context).size.width / 1.3,
    decoration: BoxDecoration(
        color: kNeutralWhite,
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
        border: Border.all(
            color: HexColor('#C4C4C4').withOpacity(0.5),
            width: 2.0,
            style: BorderStyle.solid)),
    child: TextFormField(
      controller: controller,
      style: GoogleFonts.dmSerifDisplay(textStyle: TextStyle(fontSize: 15)),
      onFieldSubmitted: (value) async {},
      onTap: () {},
      onChanged: (value) async {},
      onSaved: (input) async {},
      decoration: InputDecoration(
        fillColor: kNeutralWhite,
        hintText: 'Search Articles',
        hintStyle: GoogleFonts.barlow(
            textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: HexColor('#222222'))),
        // contentPadding: EdgeInsets.only(left: symmetric - 4),
        prefixIcon: Icon(
          Icons.search,
          // size: 20,
          color: HexColor('#979797'),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: HexColor('#C4C4C4'), width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: HexColor('#C4C4C4'),
            style: BorderStyle.solid,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
              color: HexColor('#C4C4C4'), width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    ),
  );
}

Widget searchStayUpdated(
    BuildContext context, TextEditingController controller) {
  return Container(
    height: 50,
    width: Responsive.isMobile(context) || Responsive.isMobileLarge(context)
        ? MediaQuery.of(context).size.width / 1.1
        : MediaQuery.of(context).size.width * 0.3,
    decoration: BoxDecoration(
        color: kNeutralWhite,
        borderRadius: BorderRadius.circular(6),
        shape: BoxShape.rectangle,
        border: Border.all(
            color: HexColor('#FFFFFF'), width: 2.0, style: BorderStyle.solid)),
    child: TextFormField(
      controller: controller,
      style: GoogleFonts.dmSerifDisplay(textStyle: TextStyle(fontSize: 15)),
      onFieldSubmitted: (value) async {},
      onTap: () {},
      onChanged: (value) async {},
      onSaved: (input) async {},
      decoration: InputDecoration(
        fillColor: kNeutralWhite,
        hintText: 'Enter your email address',
        hintStyle: GoogleFonts.barlow(textStyle: TextStyle(fontSize: 15)),
        contentPadding: EdgeInsets.only(left: symmetric),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: HexColor('#FFFFFF'), width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(6.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: HexColor('#FFFFFF'),
            style: BorderStyle.solid,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
              color: HexColor('#FFFFFF'), width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
      ),
    ),
  );
}

Widget subButton(BuildContext context) {
  return ElevatedButton(
      onPressed: () async {},
      style: ElevatedButton.styleFrom(
        primary: kPrimary,
        shadowColor: kPrimary,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ||
                    Responsive.isMobileLarge(context)
                ? MediaQuery.of(context).size.width / 6
                : symmetric * 2.5,
            vertical: symmetric * 1.7),
        child: MinText(
          text: 'Subscribe',
          fontWeight: FontWeight.w600,
          scaleFactor: factor * 1.2,
        ),
      ));
}

Widget commentField(BuildContext context) {
  TextEditingController controller = TextEditingController();
  return Container(
    height: 100,
    width: Responsive.isDesktop(context)
        ? MediaQuery.of(context).size.width / 4
        : MediaQuery.of(context).size.width / 1.3,
    decoration: BoxDecoration(
        color: kNeutralWhite,
        borderRadius: BorderRadius.circular(5),
        shape: BoxShape.rectangle,
        border: Border.all(
            color: HexColor('#C4C4C4').withOpacity(0.5),
            width: 2.0,
            style: BorderStyle.solid)),
    child: Center(
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.dmSerifDisplay(textStyle: TextStyle(fontSize: 15)),
        onFieldSubmitted: (value) async {},
        onTap: () {},
        onChanged: (value) async {},
        onSaved: (input) async {},
        decoration: InputDecoration(
          fillColor: kNeutralWhite,
          hintText: 'Leave a Comment',
          hintStyle: GoogleFonts.barlow(
              textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: HexColor('#575757'))),
          //  contentPadding: EdgeInsets.only(bottom: symmetric - 4),
          prefixIcon: Image.asset('images/comment.png'),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: HexColor('#C4C4C4'),
                width: 1.0,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: HexColor('#C4C4C4'),
              style: BorderStyle.solid,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
                color: HexColor('#C4C4C4'),
                width: 1.0,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
      ),
    ),
  );
}
