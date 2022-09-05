import 'package:animate_do/animate_do.dart';
import 'package:wishway/designs/colors.dart';
import 'package:wishway/designs/labels.dart';
import 'package:wishway/designs/params.dart';
import 'package:wishway/platforms/mobile.dart';
import 'package:wishway/platforms/web.dart';
import 'package:wishway/responsive/responsiveConfig.dart';
import 'package:wishway/statemanager/responsivestates.dart';
import 'package:wishway/widgets/button.dart';
import 'package:wishway/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  final SizingInformation sizeInfo;
  const HomePage({Key? key, required this.sizeInfo}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? controller;
  ScrollController controller2 = ScrollController();
  double offset = 0.0;
  @override
  void initState() {
    super.initState();
    controller = ScrollController() //keepScrollOffset: false removed
      ..addListener(() {
        setState(() {
          //<-----------------------------
          offset = controller!.offset;
          // force a refresh so the app bar can be updated
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: widget.sizeInfo.isDesktop ? kNeutralWhite : kLightGrey,
      child: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      'images/background.png',
                    ))),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF').withOpacity(0.9),
              ),
            ),
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Padding(
                  padding: EdgeInsets.only(
                      left: widget.sizeInfo.isDesktop
                          ? symmetric * 15
                          : symmetric - 5),
                  child: WebFrameHeader(
                    sizeInfo: widget.sizeInfo,
                    isBlog: false,
                  ),
                ),
                toolbarHeight:
                    widget.sizeInfo.isDesktop ? height * 0.2 : kToolbarHeight,
              ),
              body: NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification.metrics.pixels >=
                          scrollNotification.metrics.maxScrollExtent &&
                      scrollNotification.metrics.axisDirection ==
                          AxisDirection.down) {
                    Provider.of<ResponsiveManager>(context, listen: false)
                        .addSize(true);
                  }
                  if (scrollNotification.metrics.pixels ==
                          scrollNotification.metrics.minScrollExtent &&
                      scrollNotification.metrics.axisDirection ==
                          AxisDirection.down) {
                    Provider.of<ResponsiveManager>(context, listen: false)
                        .addSize(false);
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    Scrollbar(
                        isAlwaysShown: true,
                        showTrackOnHover: true,
                        controller: controller,
                        // controller: controller,
                        child: ListView(
                          controller: controller,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: widget.sizeInfo.isDesktop
                                      ? symmetric * 15
                                      : !widget.sizeInfo.isMobile
                                          ? symmetric * 8
                                          : 0.0),
                              child: widget.sizeInfo.isDesktop
                                  ? HomeBanner(
                                      sizeInfo: widget.sizeInfo,
                                    )
                                  : MobileHomeBanner(sizeInfo: widget.sizeInfo),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: FadeInLeftBig(
                                animate: true,
                                duration: Duration(milliseconds: animateTime),
                                child: widget.sizeInfo.isDesktop
                                    ? ServicePane(
                                        sizeInfo: widget.sizeInfo,
                                      )
                                    : MobileServicePane(
                                        sizeInfo: widget.sizeInfo,
                                      ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: widget.sizeInfo.isDesktop
                                      ? symmetric * 15
                                      : 0.0),
                              child: FadeInRight(
                                  animate: true,
                                  duration:
                                      Duration(milliseconds: animateTime * 2),
                                  child: widget.sizeInfo.isDesktop
                                      ? HowItWorks(sizeInfo: widget.sizeInfo)
                                      : MobileHowItWorks(
                                          sizeInfo: widget.sizeInfo)),
                            ),
                            SizedBox(
                              height: symmetric * 2,
                            ),

                            // widget.sizeInfo.isDesktop
                            //     ? HowToStart(sizeInfo: widget.sizeInfo)
                            //     : MobileHowDoIGetStarted(
                            //         sizeInfo: widget.sizeInfo),
                            widget.sizeInfo.isDesktop
                                ? ReadLatestBlog(sizeInfo: widget.sizeInfo)
                                : MobileReadLatestBlog(
                                    sizeInfo: widget.sizeInfo),
                            widget.sizeInfo.isDesktop
                                ? DownloadBanner(sizeInfo: widget.sizeInfo)
                                : MobileDownloadBanner(
                                    sizeInfo: widget.sizeInfo),
                            SizedBox(
                              height: symmetric * 6,
                            ),
                            widget.sizeInfo.isDesktop
                                ? WhiteSpace(
                                    sizeInfo: widget.sizeInfo,
                                  )
                                : SizedBox.shrink(),
                            widget.sizeInfo.isDesktop
                                ? WebFooter(
                                    sizeInfo: widget.sizeInfo,
                                  )
                                : MobileFooter(sizeInfo: widget.sizeInfo)
                          ],
                        )),
                    context.watch<ResponsiveManager>().getShow == true
                        ? Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: GestureDetector(
                                onTap: () async {
                                  controller!.animateTo(0.0,
                                      curve: Curves.easeOut,
                                      duration:
                                          const Duration(milliseconds: 300));
                                },
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white24,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.arrow_upward_outlined,
                                      size: 40,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox.shrink()
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
