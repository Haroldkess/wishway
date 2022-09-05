import 'package:flutter/cupertino.dart';

class BlogPosts {
  String title;
  String subTitle;
  String image;
  String by;
  String date;

  BlogPosts(
      {required this.title,
      required this.subTitle,
      required this.image,
      required this.by,
      required this.date});
}

final List<BlogPosts> posts = [
  BlogPosts(
      title: 'Enim vivamus',
      subTitle: 'In ipsum ut diam mauris aenean a praesent consequat, leo.  ',
      image: 'images/postImg.png',
      by: 'By Chow',
      date: 'May 10, 2022'),
  BlogPosts(
      title: 'Enim vivamus',
      subTitle: 'In ipsum ut diam mauris aenean a praesent consequat, leo.  ',
      image: 'images/postImg.png',
      by: 'By Hillary Ken',
      date: 'May 10, 2022'),
  BlogPosts(
      title: 'Enim vivamus',
      subTitle: 'In ipsum ut diam mauris aenean a praesent consequat, leo.  ',
      image: 'images/postImg.png',
      by: 'By Chow',
      date: 'May 10, 2022'),
];

class RecentPost {
  String icon;
  String title;
  String date;

  RecentPost({required this.icon, required this.title, required this.date});
}

final List<RecentPost> recent = [
  RecentPost(
      icon: 'images/notif.png',
      title: 'Huge Discount On Wishway',
      date: 'June 20,2022'),
  RecentPost(
      icon: 'images/notif.png',
      title: 'Huge Discount On Wishway',
      date: 'June 20,2022'),
  RecentPost(
      icon: 'images/notif.png',
      title: 'Huge Discount On Wishway',
      date: 'June 20,2022'),
];

class WhatToKnow {
  String title;
  String subTitle;

  WhatToKnow({
    required this.title,
    required this.subTitle,
  });
}

final List<WhatToKnow> whatToKnow = [
  WhatToKnow(
      title: 'What You Need To Know As A Vendor',
      subTitle: 'In ipsum ut diam mauris aenean a praesent consequat, leo.'),
  WhatToKnow(
      title: 'What You Need To Know As A Vendor',
      subTitle: 'In ipsum ut diam mauris aenean a praesent consequat, leo.'),
  WhatToKnow(
      title: 'What You Need To Know As A Vendor',
      subTitle: 'In ipsum ut diam mauris aenean a praesent consequat, leo.'),
  WhatToKnow(
      title: 'What You Need To Know As A Vendor',
      subTitle: 'In ipsum ut diam mauris aenean a praesent consequat, leo.'),
  WhatToKnow(
      title: 'What You Need To Know As A Vendor',
      subTitle: 'In ipsum ut diam mauris aenean a praesent consequat, leo.'),
  WhatToKnow(
      title: 'What You Need To Know As A Vendor',
      subTitle: 'In ipsum ut diam mauris aenean a praesent consequat, leo.'),
];

class AdsModel {
  String image;

  AdsModel({required this.image});
}

final List<AdsModel> ads = [
  AdsModel(image: 'images/ad1.png'),
  AdsModel(image: 'images/ad2.png'),
];
final List<AdsModel> ads2 = [
  AdsModel(image: 'images/ad1.png'),
];

class BigPost {
  String title;
  String subTitle;
  String image;
  String by;
  String date;
  String desc;

  BigPost(
      {required this.title,
      required this.subTitle,
      required this.image,
      required this.desc,
      required this.by,
      required this.date});
}

final List<BigPost> bigPost = [
  BigPost(
      title: 'Enim vivamus',
      subTitle:
          'In ipsum ut diam mauris aenean a praesent consequat, leo. Mattis orci posuere platea quisque cursus integer eu. ',
      image: 'images/bigPosts.png',
      desc: 'In ipsum ut diam mauris aenean a praesent consequat, leo. . ',
      by: 'By Chow',
      date: 'May 10, 2022'),
  BigPost(
      title: 'Enim vivamus',
      subTitle:
          'In ipsum ut diam mauris aenean a praesent consequat, leo. Mattis orci posuere platea quisque cursus integer eu. ',
      image: 'images/bigPosts.png',
      desc: 'In ipsum ut diam mauris aenean a praesent consequat, leo. . ',
      by: 'By Chow',
      date: 'May 10, 2022'),
];

class HowItWorksModel {
  String? title;
  String? asset;

  HowItWorksModel({this.title, this.asset});
}

List<HowItWorksModel> howItWorks = [
  HowItWorksModel(asset: 'images/dot.png', title: 'Register'),
  HowItWorksModel(
      asset: 'images/dot.png', title: 'Choose Pickup and Delivery Address'),
  HowItWorksModel(asset: 'images/dot.png', title: 'Confirm Payment'),
  HowItWorksModel(asset: 'images/dot.png', title: 'One Click Dispatch'),
];
