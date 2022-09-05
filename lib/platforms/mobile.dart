import 'package:animate_do/animate_do.dart';

import 'package:wishway/designs/colors.dart';
import 'package:wishway/designs/labels.dart';
import 'package:wishway/designs/params.dart';
import 'package:wishway/models/blog_posts.dart';
import 'package:wishway/widgets/button.dart';
import 'package:wishway/widgets/icons.dart';
import 'package:wishway/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileFrame extends StatefulWidget {
  final SizingInformation sizeInfo;
  const MobileFrame({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<MobileFrame> createState() => _MobileFrameState();
}

class _MobileFrameState extends State<MobileFrame> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MobileHomeBanner extends StatefulWidget {
  final SizingInformation sizeInfo;
  const MobileHomeBanner({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<MobileHomeBanner> createState() => _MobileHomeBannerState();
}

class _MobileHomeBannerState extends State<MobileHomeBanner> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            //height: height * 0.6,
            // width: width / 3.0,
            color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(
                  height: symmetric * 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width:
                          !widget.sizeInfo.isMobile ? width / 1.5 : width * 0.5,
                      child: MaxText(
                        text: head1,
                        color: HexColor('#222222'),
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Barlow-Regular',
                        scaleFactor: factor * 2.2,
                        maxLines: 5,
                        align: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: symmetric,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width:
                          !widget.sizeInfo.isMobile ? width / 1.5 : width * 0.7,
                      alignment: Alignment.center,
                      child: MaxText(
                        text: head2,
                        color: HexColor('#222222'),
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Barlow-Regular',
                        scaleFactor: factor * 2.2,
                        align: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: symmetric,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width / 1.5,
                      alignment: Alignment.center,
                      child: MaxText(
                        text: head3,
                        color: HexColor('#222222'),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Barlow-Regular',
                        scaleFactor: factor * 2.2,
                        align: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: symmetric * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width / 3.4,
                      child: MinText(
                        text:
                            'We are the fastest and most favourite delivery service all over town ',
                        color: HexColor('#575757'),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Barlow-Regular',
                        scaleFactor: factor * 1.24,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        align: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: symmetric * 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 30.0,
                      shadowColor: HexColor('#F8842F'),
                      child: Image.asset(
                        'images/appstore2.png',
                        width: height * 0.2,
                      ),
                    ),
                    SizedBox(
                      height: symmetric * 2,
                    ),
                    Card(
                      elevation: 30.0,
                      shadowColor: HexColor("#F8842F"),
                      child: Image.asset(
                        'images/ghead.png',
                        width: height * 0.2,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          FadeInRightBig(
            animate: true,
            duration: Duration(milliseconds: animateTime),
            child: Container(
              height: height * 0.6,
              child: Align(
                alignment: Alignment.center,
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
            ),
          ),
        ],
      ),
    );
  }
}

class MobileServicePane extends StatefulWidget {
  final SizingInformation sizeInfo;
  const MobileServicePane({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<MobileServicePane> createState() => _MobileServicePaneState();
}

class _MobileServicePaneState extends State<MobileServicePane> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        child: Align(
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
    ));
  }
}

class MobileHowItWorks extends StatefulWidget {
  final SizingInformation sizeInfo;
  const MobileHowItWorks({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<MobileHowItWorks> createState() => _MobileHowItWorksState();
}

class _MobileHowItWorksState extends State<MobileHowItWorks> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          height: symmetric * 2,
        ),
        Image.asset('images/howmobile.png'),
        SizedBox(
          height: symmetric * 2,
        ),
        Container(
          // height: height * 1.1,
          height: height * 0.7,
          width: width,
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: symmetric),
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
                                padding:
                                    EdgeInsets.symmetric(vertical: symmetric),
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
                      elevation: 10,
                      shadowColor: HexColor('#F8842F'),
                      child: Container(
                        width: width,
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
                                width: width * 0.7,
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
        ),
      ]),
    );
  }
}

class MobileDownloadBanner extends StatefulWidget {
  final SizingInformation sizeInfo;
  const MobileDownloadBanner({Key? key, required this.sizeInfo})
      : super(key: key);

  @override
  State<MobileDownloadBanner> createState() => _MobileDownloadBannerState();
}

class _MobileDownloadBannerState extends State<MobileDownloadBanner> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      //     height: height * 0.5,
      width: double.infinity,
      color: HexColor('#F8842F'),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: symmetric * 3),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width / 2,
                    child: MaxText(
                      text: downloadBannerHeading,
                      color: HexColor('#FFFFFF'),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Barlow-Regular',
                      scaleFactor: factor * 2,
                      align: TextAlign.center,
                      maxLines: 4,
                    ),
                  ),
                  SizedBox(
                    height: symmetric,
                  ),
                  Container(
                    width: width / 2,
                    child: MinText(
                      text: downloadBannerBody,
                      color: HexColor('#FFFFFF'),
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Barlow-Regular',
                      scaleFactor: factor,
                      align: TextAlign.center,
                      maxLines: 8,
                    ),
                  ),
                  SizedBox(
                    height: symmetric,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/appstore.png',
                        width: height * 0.18,
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(
                        height: symmetric,
                      ),
                      Image.asset(
                        'images/ghead.png',
                        width: height * 0.18,
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
                  width: height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/Delivery.png'))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileWhyChooseUs extends StatefulWidget {
  final SizingInformation sizeInfo;
  const MobileWhyChooseUs({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<MobileWhyChooseUs> createState() => _MobileWhyChooseUsState();
}

class _MobileWhyChooseUsState extends State<MobileWhyChooseUs> {
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
            padding: EdgeInsets.symmetric(
                horizontal: !widget.sizeInfo.isMobile ? symmetric * 15 : 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: whyChoosePanes
                  .map((items) => Column(
                        children: [
                          Container(
                            height: height * 0.2,
                            width: width * 0.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(items.imagePath!))),
                          ),
                          SizedBox(
                            height: symmetric,
                          ),
                          Container(
                            width: width / 1.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: MinText(
                                    text: items.headText!,
                                    color: HexColor('#575757'),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Barlow-Regular',
                                    align: TextAlign.center,
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
                            width: width / 1.2,
                            child: MinText(
                              text: items.bodyText!,
                              color: HexColor('#222222'),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Barlow-Regular',
                              scaleFactor: factor,
                              maxLines: 5,
                              align: TextAlign.center,
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

class MobileHowDoIGetStarted extends StatefulWidget {
  final SizingInformation sizeInfo;
  const MobileHowDoIGetStarted({Key? key, required this.sizeInfo})
      : super(key: key);

  @override
  State<MobileHowDoIGetStarted> createState() => _MobileHowDoIGetStartedState();
}

class _MobileHowDoIGetStartedState extends State<MobileHowDoIGetStarted> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
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
                width: width / 1.2,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: getStartPaneList1
                    .map((items) => Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: symmetric * 2,
                              horizontal: symmetric * 3),
                          child: Container(
                            width: width / 1.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: width / 1.3,
                                      child: Row(
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
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Expanded(
                                            child: MinText(
                                              text: items.headText!,
                                              color: HexColor('#222222'),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Barlow-Regular',
                                              scaleFactor: factor * 1.24,
                                              maxLines: 1,
                                              align: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: symmetric * 2,
                                    ),
                                    Container(
                                      width: width / 1.3,
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
                          ),
                        ))
                    .toList(),
              ),
              Column(
                children: getStartPaneList2
                    .map((items) => Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: symmetric * 2,
                              horizontal: symmetric * 3),
                          child: Container(
                            width: width / 1.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: width / 1.3,
                                      child: Row(
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
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Expanded(
                                            child: MinText(
                                              text: items.headText!,
                                              color: HexColor('#222222'),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Barlow-Regular',
                                              scaleFactor: factor * 1.24,
                                              maxLines: 1,
                                              align: TextAlign.start,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: symmetric * 2,
                                    ),
                                    Container(
                                      width: width / 1.3,
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
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
          SizedBox(
            height: symmetric * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaxText(
                text: "Have Question?",
                overflow: TextOverflow.ellipsis,
                align: TextAlign.center,
                scaleFactor: factor * 2.0,
                maxLines: 1,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          SizedBox(
            height: symmetric * 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
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
                        horizontal: symmetric, vertical: symmetric),
                    child: MinText(
                      text: 'Contact us',
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: symmetric * 2,
          ),
        ],
      ),
    );
  }
}

class MobileReadLatestBlog extends StatefulWidget {
  final SizingInformation sizeInfo;
  const MobileReadLatestBlog({Key? key, required this.sizeInfo})
      : super(key: key);

  @override
  State<MobileReadLatestBlog> createState() => _MobileReadLatestBlogState();
}

class _MobileReadLatestBlogState extends State<MobileReadLatestBlog> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          FadeInLeft(
            animate: true,
            duration: Duration(milliseconds: 2000),
            child: Container(
              // height: height * 0.75,
              width: width,
              //alignment: Alignment.topLeft,
              //   color: kPrimary,

              child: Padding(
                padding: EdgeInsets.only(bottom: symmetric),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(symmetric),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: symmetric * 2),
                            child: Row(
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
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: symmetric * 2),
                            child: Container(
                              width: width / 1.3,
                              child: MinText(
                                text:
                                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                                color: HexColor('#929292'),
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Barlow-Regular',
                                scaleFactor: factor * 1.24,
                                maxLines: 6,
                                align: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: TextButton(
                              onPressed: null,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            height: symmetric * 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: blogger
                .map((items) => FadeInRight(
                      animate: true,
                      duration: Duration(milliseconds: 2000),
                      child: Card(
                        child: Container(
                          width:
                              !widget.sizeInfo.isMobile ? width / 1.2 : width,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: symmetric, horizontal: symmetric),
                            child: Row(
                              children: [
                                Container(
                                  height: height * 0.2515,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "images/stepPicture.png"))),
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
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: MinText(
                                          text: items.headText!,
                                          color: HexColor('#575757'),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Barlow-Regular',
                                          scaleFactor: factor * 2.2,
                                          maxLines: 5,
                                          align: TextAlign.start,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
          ),
          SizedBox(
            height: symmetric * 2,
          ),
        ],
      ),
    );
  }
}

class MobileFooter extends StatefulWidget {
  final SizingInformation sizeInfo;
  const MobileFooter({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<MobileFooter> createState() => _MobileFooterState();
}

class _MobileFooterState extends State<MobileFooter> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      // height: height * 0.6,
      width: width,
      color: kNeutraBlack,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: symmetric * 5, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Image.asset(
                  'images/FooterLogo.png',
                  height: height * 0.06,
                  width: height * 0.12,
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
            Column(
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
                SizedBox(
                  height: symmetric,
                ),
              ],
            ),
            Column(
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
          ],
        ),
      ),
    );
  }
}
