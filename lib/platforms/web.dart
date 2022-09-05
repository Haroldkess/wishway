import 'package:animate_do/animate_do.dart';

import 'package:wishway/designs/colors.dart';
import 'package:wishway/designs/labels.dart';
import 'package:wishway/designs/params.dart';
import 'package:wishway/models/blog_posts.dart';
import 'package:wishway/responsive/responsiveConfig.dart';
import 'package:wishway/widgets/button.dart';
import 'package:wishway/widgets/icons.dart';
import 'package:wishway/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WebFrameHeader extends StatefulWidget {
  final SizingInformation sizeInfo;
  final bool isBlog;
  const WebFrameHeader({Key? key, required this.sizeInfo, required this.isBlog})
      : super(key: key);

  @override
  State<WebFrameHeader> createState() => _WebFrameHeaderState();
}

class _WebFrameHeaderState extends State<WebFrameHeader> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          right: widget.sizeInfo.isDesktop ? symmetric * 15 : symmetric - 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                widget.sizeInfo.isDesktop
                    ? Image.asset(
                        "images/logo.png",
                        height: height * 0.12,
                        width: height * 0.12,
                      )
                    : Image.asset(
                        "images/logo.png",
                        height: 70,
                        width: 70,
                      ),
              ],
            ),
          ),
          widget.sizeInfo.isDesktop
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: widget.isBlog == false
                      ? webMenu
                          .map((options) => Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: symmetric - 3),
                                child: options != "Get Started"
                                    ? TextButton(
                                        style: TextButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            onSurface: kPrimary),
                                        onPressed: () {},
                                        child: MinText(
                                          text: options,
                                          color: options == "Home"
                                              ? HexColor('#F8842F')
                                              : HexColor('#000000'),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Barlow-Regular',
                                          scaleFactor: factor * 0.8,
                                        ),
                                      )
                                    : ChowElevatedButton(
                                        child: MinText(
                                          text: options,
                                          color: kNeutralWhite,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Barlow-Regular',
                                          scaleFactor: factor * 0.7,
                                        ),
                                      ),
                              ))
                          .toList()
                      : blogMenu
                          .map((options) => Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: symmetric - 3),
                                child: options != "Get Started"
                                    ? TextButton(
                                        style: TextButton.styleFrom(
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            onSurface: kPrimary),
                                        onPressed: () {},
                                        child: MinText(
                                          text: options,
                                          color: options[0] == "Home"
                                              ? kPrimary
                                              : HexColor('#000000'),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Barlow-Regular',
                                          scaleFactor: factor * 0.8,
                                        ),
                                      )
                                    : ChowElevatedButton(
                                        child: MinText(
                                          text: options,
                                          color: kNeutralWhite,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Barlow-Regular',
                                          scaleFactor: factor * 0.7,
                                        ),
                                      ),
                              ))
                          .toList(),
                )
              : Image.asset('images/menu.png',color: HexColor('#F8842F'),)
        ],
      ),
    );
  }
}

class HomeBanner extends StatefulWidget {
  final SizingInformation sizeInfo;
  const HomeBanner({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.7,
      color: Colors.transparent,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: symmetric),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height * 0.6,
              width: width / 3.0,
              color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(
                    height: symmetric * 5,
                  ),
                  Row(
                    children: [
                      MaxText(
                        text: head1,
                        color: HexColor('#242424'),
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Barlow-Regular',
                        scaleFactor: factor * 1.8,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: symmetric,
                  ),
                  Row(
                    children: [
                      MaxText(
                        text: head2,
                        color: HexColor('#242424'),
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Barlow-Regular',
                        scaleFactor: factor * 1.8,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: symmetric,
                  ),
                  Row(
                    children: [
                      MaxText(
                        text: head3,
                        color: HexColor('#242424'),
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Barlow-Regular',
                        scaleFactor: factor * 1.8,
                      ),
                    ],
                  ),
                  SizedBox(
                    height:
                        Responsive.isShrinked(context) ? 0.0 : symmetric * 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MinText(
                          text:
                              'We are the fastest and most favourite delivery service ',
                          color: HexColor('#575757'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Barlow-Regular',
                          scaleFactor: factor,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MinText(
                          text: 'all over town',
                          color: HexColor('#575757'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Barlow-Regular',
                          scaleFactor: factor,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:
                        !Responsive.isShrinked(context) ? symmetric * 2 : 3.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/appstore.png',
                        width: Responsive.isShrinked(context)
                            ? height * 0.1
                            : height * 0.13,
                      ),
                      SizedBox(
                        width: symmetric * 2,
                      ),
                      Image.asset(
                        'images/ghead.png',
                        width: Responsive.isShrinked(context)
                            ? height * 0.1
                            : height * 0.13,
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerRight,
                child: FadeInRightBig(
                  animate: true,
                  duration: Duration(milliseconds: animateTime),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //mainAxisSize: MainAxisSize.min,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: symmetric * 2),
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.5,
                          width: height * 0.45,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage('images/sendpack.png'))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServicePane extends StatefulWidget {
  final SizingInformation sizeInfo;
  const ServicePane({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<ServicePane> createState() => _ServicePaneState();
}

class _ServicePaneState extends State<ServicePane> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: symmetric,
                      ),
                      Row(
                        children: [
                          MaxText(
                            text: ourServicestitle1,
                            color: HexColor('#222222'),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Barlow-Regular',
                            scaleFactor: factor * 2.0,
                          ),
                          MaxText(
                            text: 'Offer',
                            color: HexColor('#F8842F'),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Barlow-Regular',
                            scaleFactor: factor * 2.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                
                ],
              ),
              SizedBox(
                height: symmetric,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset('images/offer.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HowItWorks extends StatefulWidget {
  final SizingInformation sizeInfo;
  const HowItWorks({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<HowItWorks> createState() => _HowItWorksState();
}

class _HowItWorksState extends State<HowItWorks> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          MaxText(
                            text: howTitle,
                            color: HexColor('#222222'),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Barlow-Regular',
                            scaleFactor: factor * 2.0,
                          ),
                          MaxText(
                            text: 'Works?',
                            color: HexColor('#F8842F'),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Barlow-Regular',
                            scaleFactor: factor * 2.0,
                          ),
                        ],
                      ),
                  
                  
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: symmetric,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('images/howmobile.png'),

                  // Container(

                  //   width: height * 0.4,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           fit: BoxFit.fitWidth,
                  //           image: AssetImage('images/howmobile.png'))),
                  // ),
                ],
              ),
              Container(
                // height: height * 1.1,
                height: height * 0.7,
                width: width / 3,
                alignment: Alignment.topRight,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: howItWorks
                              .map((e) => Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: symmetric),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 7,
                                          backgroundColor: Colors.transparent,
                                          backgroundImage: AssetImage(e.asset!),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        MaxText(
                                          text: e.title!,
                                          color: HexColor('#161616'),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Barlow-Regular',
                                          scaleFactor: factor * 1.3,
                                        ),
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          elevation: 30,
                          shadowColor: HexColor('#F8842F'),
                          child: Container(
                            width: width / 3,
                            child: Padding(
                              padding: EdgeInsets.all(symmetric),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  MaxText(
                                    text: 'Item Delivered!',
                                    color: HexColor('#161616'),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Barlow-Regular',
                                    scaleFactor: factor * 1.3,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: width * 0.3,
                                    child: MaxText(
                                      text:
                                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                                      color: HexColor('#929292'),
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Barlow-Regular',
                                      scaleFactor: factor,
                                      align: TextAlign.start,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Positioned(
                        right: 20.0,
                        top: -5,
                        child: Image.asset(
                          'images/ring.png',
                          fit: BoxFit.contain,
                          height: height * 0.2,
                          width: height * 0.2,
                        ))
                  ],
                ),
              ),
    
    
            ],
          )
        ],
      ),
    );
  }
}

class DownloadBanner extends StatefulWidget {
  final SizingInformation sizeInfo;
  const DownloadBanner({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<DownloadBanner> createState() => _DownloadBannerState();
}

class _DownloadBannerState extends State<DownloadBanner> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.5,
      width: double.infinity,
      color: HexColor('#F8842F'),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width / 4,
                  child: MaxText(
                    text: downloadBannerHeading,
                    color: HexColor('#161616'),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Barlow-Regular',
                    scaleFactor: factor * 3,
                    align: TextAlign.start,
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: symmetric,
                ),
                Container(
                  width: width / 4,
                  child: MinText(
                    text: downloadBannerBody,
                    color: HexColor('#161616'),
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Barlow-Regular',
                    scaleFactor: factor,
                    align: TextAlign.start,
                    maxLines: 3,
                  ),
                ),
                SizedBox(
                  height: symmetric * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/appstore.png',
                      // width: height * 0.13,
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      width: symmetric,
                    ),
                    Image.asset(
                      'images/ghead.png',
                      //   width: height * 0.13,
                      alignment: Alignment.centerLeft,
                    )
                  ],
                )
              ],
            ),
          
          
            FadeInUp(
              animate: true,
              duration: Duration(milliseconds: animateTime * 2),
              child: Container(
                height: height * 0.4,
                width: height * 0.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Delivery.png'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WhyChooseUs extends StatefulWidget {
  final SizingInformation sizeInfo;
  const WhyChooseUs({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<WhyChooseUs> createState() => _WhyChooseUsState();
}

class _WhyChooseUsState extends State<WhyChooseUs> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      //  height: height * 0.6,
      width: double.infinity,
      color: HexColor('#F5F5F5'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: symmetric * 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaxText(
                text: whyChooseHead,
                color: HexColor('#222222'),
                fontWeight: FontWeight.w400,
                fontFamily: 'Barlow-Regular',
                scaleFactor: factor * 2.0,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: symmetric * 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: whyChoosePanes
                  .map((items) => Column(
                        children: [
                          Container(
                            height: height * 0.2,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(items.imagePath!))),
                          ),
                          SizedBox(
                            height: symmetric,
                          ),
                          Container(
                            width: width / 5.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: width * 0.1,
                                  alignment: Alignment.centerRight,
                                  child: MinText(
                                    text: items.headText!,
                                    color: HexColor('#575757'),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Barlow-Regular',
                                    align: TextAlign.start,
                                    scaleFactor: factor * 1.32,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: symmetric,
                          ),
                          Container(
                            width: width / 5.5,
                            child: MinText(
                              text: items.bodyText!,
                              color: HexColor('#222222'),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Barlow-Regular',
                              scaleFactor: factor * 1.18,
                              maxLines: 5,
                              align: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
            height: symmetric * 5,
          ),
        ],
      ),
    );
  }
}

class HowToStart extends StatefulWidget {
  final SizingInformation sizeInfo;
  const HowToStart({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<HowToStart> createState() => _HowToStartState();
}

class _HowToStartState extends State<HowToStart> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          height: height * 0.7,
          width: double.infinity,
          color: kNeutralWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'images/Ellipse.png',
                    height: height * 0.5,
                    width: height * 0.6,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    width: symmetric * 10,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          //  height: height * 0.8,
          width: double.infinity,
          //  color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: symmetric * 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaxText(
                    text: howToStartHead,
                    color: HexColor('#222222'),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Barlow-Regular',
                    scaleFactor: factor * 2.0,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width / 2.5,
                    child: MinText(
                      text: howToStartTitle,
                      color: HexColor('#222222'),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Barlow-Regular',
                      scaleFactor: factor * 1.18,
                      maxLines: 2,
                      align: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: symmetric * 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: getStartPaneList1
                        .map((items) => Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: symmetric * 2),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topCenter,
                                        height: height * 0.15,
                                        width: height * 0.15,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: kSecondary,
                                              radius: height * 0.02,
                                              child: MinText(
                                                text: '1',
                                                color: kNeutralWhite,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: width / 5.5,
                                            child: MinText(
                                              text: items.headText!,
                                              color: HexColor('#222222'),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Barlow-Regular',
                                              scaleFactor: factor * 1.24,
                                              maxLines: 5,
                                              align: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          SizedBox(
                                            height: symmetric * 2,
                                          ),
                                          Container(
                                            width: width / 5.5,
                                            child: MinText(
                                              text: items.bodyText!,
                                              color: HexColor('#575757'),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Barlow-Regular',
                                              scaleFactor: factor * 1.18,
                                              maxLines: 4,
                                              align: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                  Column(
                    children: getStartPaneList2
                        .map((items) => Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: symmetric * 2),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.topCenter,
                                        height: height * 0.15,
                                        width: height * 0.15,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: kSecondary,
                                              radius: height * 0.02,
                                              child: MinText(
                                                text: '1',
                                                color: kNeutralWhite,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: width / 5.5,
                                            child: MinText(
                                              text: items.headText!,
                                              color: HexColor('#222222'),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Barlow-Regular',
                                              scaleFactor: factor * 1.24,
                                              maxLines: 5,
                                              align: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          SizedBox(
                                            height: symmetric * 2,
                                          ),
                                          Container(
                                            width: width / 5.5,
                                            child: MinText(
                                              text: items.bodyText!,
                                              color: HexColor('#575757'),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Barlow-Regular',
                                              scaleFactor: factor * 1.18,
                                              maxLines: 4,
                                              align: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class ReadLatestBlog extends StatefulWidget {
  final SizingInformation sizeInfo;
  const ReadLatestBlog({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<ReadLatestBlog> createState() => _ReadLatestBlogState();
}

class _ReadLatestBlogState extends State<ReadLatestBlog> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      //height: height * 1.08,
      width: double.infinity,
      //color: HexColor('#FBF0F0'),
      child: Padding(
        padding: EdgeInsets.only(top: symmetric * 2, bottom: symmetric - 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaxText(
                  text: 'Read Latest',
                  color: HexColor('#222222'),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Barlow-Regular',
                  scaleFactor: factor * 2.0,
                ),
                MaxText(
                  text: ' Blog',
                  color: Colors.orange[800],
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Barlow-Regular',
                  scaleFactor: factor * 2.0,
                ),
              ],
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInLeft(
                  animate: true,
                  duration: Duration(milliseconds: 2000),
                  child: Container(
                    // height: height * 0.75,
                    width: width * 0.25,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        color: kNeutralWhite,
                        border: Border.all(width: 1.0, style: BorderStyle.none),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: symmetric),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/makingOrder.png',
                            height: height * 0.25,
                            width: width * 0.5,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topLeft,
                          ),
                          Padding(
                            padding: EdgeInsets.all(symmetric),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: symmetric * 2,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: symmetric, bottom: symmetric),
                                  child: Row(
                                    children: [
                                      MinText(
                                        text: 'August 5  | Miracle uzo',
                                        color: HexColor('#575757'),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Barlow-Regular',
                                        scaleFactor: factor,
                                        maxLines: 1,
                                        align: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: symmetric,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: symmetric * 2),
                                  child: MinText(
                                    text: '5 Ways To Make a Secured Delivery',
                                    color: HexColor('#161616'),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Barlow-Regular',
                                    scaleFactor: factor * 2.0,
                                    maxLines: 2,
                                    align: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: symmetric * 2),
                                  child: MinText(
                                    text:
                                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                                    color: HexColor('#929292'),
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Barlow-Regular',
                                    scaleFactor: factor * 1.24,
                                    maxLines: 6,
                                    align: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: TextButton(
                                    onPressed: null,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        MinText(
                                          text: 'Read More',
                                          color: HexColor('#F8842F'),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Barlow-Regular',
                                          scaleFactor: factor,
                                          maxLines: 2,
                                          align: TextAlign.start,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(
                                          Icons.arrow_right_outlined,
                                          color: HexColor('#F8842F'),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: symmetric),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: blogger
                      .map((items) => FadeInRight(
                            animate: true,
                            duration: Duration(milliseconds: 2000),
                            child: Card(
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: symmetric,
                                      horizontal: symmetric),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: height * 0.215,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    items.imagePath!))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            MinText(
                                              text: items.date!,
                                              color: HexColor('#575757'),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Barlow-Regular',
                                              scaleFactor: factor,
                                              maxLines: 1,
                                              align: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(height: symmetric),
                                            MinText(
                                              text: items.headText!,
                                              color: HexColor('#161616'),
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Barlow-Regular',
                                              scaleFactor: factor * 1.2,
                                              maxLines: 2,
                                              align: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(height: symmetric),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: TextButton(
                                                onPressed: null,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    MinText(
                                                      text: items.bodyText!,
                                                      color:
                                                          HexColor('#F8842F'),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          'Barlow-Regular',
                                                      scaleFactor: factor,
                                                      maxLines: 2,
                                                      align: TextAlign.start,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: symmetric),
                                                      child: Icon(
                                                        Icons
                                                            .arrow_forward_outlined,
                                                        color:
                                                            HexColor('#F8842F'),
                                                        size: 10,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
            SizedBox(
              height: symmetric * 3,
            ),
          ],
        ),
      ),
    );
  }
}

class WhiteSpace extends StatefulWidget {
  final SizingInformation sizeInfo;
  const WhiteSpace({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<WhiteSpace> createState() => _WhiteSpaceState();
}

class _WhiteSpaceState extends State<WhiteSpace> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: double.infinity,
      color: kNeutralWhite,
    );
  }
}

class WebFooter extends StatefulWidget {
  final SizingInformation sizeInfo;

  const WebFooter({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<WebFooter> createState() => _WebFooterState();
}

class _WebFooterState extends State<WebFooter> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.6,
      width: double.infinity,
      color: kNeutraBlack,
      child: Padding(
        padding: EdgeInsets.only(right: symmetric * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.5,
                 // width: width * 0.15,
                  //color: Colors.white,
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           SizedBox(
                        width: 100,
                      ),
                          Image.asset(
                            'images/FooterLogo.png',
                            height: height * 0.06,
                            //  width: height * 0.12,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.5,
                  width: width * 0.15,
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      MinText(
                        text: 'Company',
                        color: HexColor('#E7E7E7'),
                        fontWeight: FontWeight.w700,
                        scaleFactor: factor * 1.124,
                        maxLines: 2,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: symmetric,
                      ),
                      MinText(
                        text: 'Home',
                        color: HexColor('#FFFFFF'),
                        fontWeight: FontWeight.w400,
                        scaleFactor: factor * 1.124,
                        maxLines: 2,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: symmetric,
                      ),
                      MinText(
                        text: 'Agents',
                        color: HexColor('#FFFFFF'),
                        fontWeight: FontWeight.w400,
                        scaleFactor: factor * 1.124,
                        maxLines: 2,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: symmetric,
                      ),
                      MinText(
                        text: 'Vendors',
                        color: HexColor('#FFFFFF'),
                        fontWeight: FontWeight.w400,
                        scaleFactor: factor * 1.124,
                        maxLines: 2,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.5,
                  width: width * 0.15,
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      MinText(
                        text: 'Other Services',
                        color: HexColor('#E7E7E7'),
                        fontWeight: FontWeight.w700,
                        scaleFactor: factor * 1.124,
                        maxLines: 2,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: symmetric,
                      ),
                      MinText(
                        text: 'Schedule a pickup',
                        color: HexColor('#FFFFFF'),
                        fontWeight: FontWeight.w400,
                        scaleFactor: factor * 1.124,
                        maxLines: 2,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: symmetric,
                      ),
                      MinText(
                        text: 'Report Issues',
                        color: HexColor('#FFFFFF'),
                        fontWeight: FontWeight.w400,
                        scaleFactor: factor * 1.124,
                        maxLines: 2,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: symmetric,
                      ),
                      MinText(
                        text: 'Cities',
                        color: HexColor('#FFFFFF'),
                        fontWeight: FontWeight.w400,
                        scaleFactor: factor * 1.124,
                        maxLines: 2,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.5,
                  width: width * 0.15,
                  // color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      MinText(
                        text: 'Connect with us',
                        color: HexColor('#E7E7E7'),
                        fontWeight: FontWeight.w700,
                        scaleFactor: factor * 1.124,
                        maxLines: 2,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: symmetric,
                      ),
                      Container(
                        width: height * 0.12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'images/face.png',
                              height: height * 0.02,
                            ),
                            Image.asset(
                              'images/twit.png',
                              height: height * 0.02,
                            ),
                            Image.asset(
                              'images/link.png',
                              height: height * 0.02,
                            ),
                            Image.asset(
                              'images/insta.png',
                              height: height * 0.02,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
