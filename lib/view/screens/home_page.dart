import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:luv_it/view/utils/app_assets.dart';
import 'package:luv_it/view/utils/app_text_style.dart';
import 'package:luv_it/view/utils/business_logic.dart';
import 'package:luv_it/view/utils/color.dart';
import 'package:luv_it/view/utils/constants.dart';
import 'package:luv_it/view/utils/custom_boxes.dart';
import 'package:luv_it/viewmodel/home_screen_viewmodel.dart';

import '../custom_nav_bar/convex_bottom_bar.dart';

class HomeCarousalScreen extends StatefulWidget {
  const HomeCarousalScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<HomeCarousalScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  HomeScreenViewModel viewModel = Get.put(HomeScreenViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navBarBackgroundBlack,
      appBar: AppBar(
        leading: SvgPicture.asset(SvgAssets.locationSvg, height: w18, width: w14,),
        leadingWidth: w28,
        titleSpacing: 0.0,
        title: Row(
          children: [
            //목이길어슬픈기린님의 새로운 스팟
             Text('목이길어슬픈기린', style: AppTextStyle.bold700_14,),
             Text('님의 새로운', style: AppTextStyle.light300_14,),
             Text(' 스팟', style: AppTextStyle.bold700_14,)
          ],
        ),
        actions: [
          Container(
            width: getWidth(90),
            height: getWidth(30),
            padding: EdgeInsets.all(w4),
            decoration: BoxDecoration(
              // color: Colors.white.withOpacity(0.2),
              border: Border.all(color: AppColors.borderColor, width: 1.0),
              borderRadius: BorderRadius.circular(getWidth(100))

            ),
            child: Row(
              children: [
                SvgPicture.asset(SvgAssets.redStarSvg, width: w16,),
                width2,
                Text('323,233', style: AppTextStyle.medium500_14,)
              ],
            ),
          ),
          SvgPicture.asset(SvgAssets.notificationSvg)
        ],
        ),
      body: Stack(children: [
        CarouselSlider(
          items: viewModel.imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
            // animateToClosest: false,
            enableInfiniteScroll: false,
              autoPlay: false,
              enlargeCenterPage: false,
              aspectRatio: 390/600,
              viewportFraction: 0.9,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => _controller.previousPage(),
              child: SizedBox(
                // color: Colors.red,
                width: getWidth(190),
                height: getWidth(190),
              ),
            ),
             InkWell(
              onTap: () => _controller.nextPage(),
               child: SizedBox(
                // color: Colors.yellow,
                width: getWidth(190),
                height: getWidth(190),
                           ),
             ),
          ],
        ),
      _current == 5 ? nothing :  Positioned(
          top: 10.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: viewModel.imageSliders.asMap().entries.map((entry) {
              return entry.key == 5 ? nothing : InkWell(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.68 / (viewModel.imageSliders.length - 1),
                  height: 3.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      color: _current == entry.key ? AppColors.currentCard : AppColors.otherCard,
                          ),
                ),
              );
            }).toList(),
          ),
        ),
      ]),
    bottomNavigationBar: Padding(
      padding:  EdgeInsets.only(top: w30),
      child: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: AppColors.navBarBackgroundBlack,
        shadowColor: AppColors.textSubtitleWhite,
        elevation: 1.0,
        color: AppColors.textSubtitleBlack,
        activeColor: AppColors.currentCard,
       curveSize: 80,
       top: -18,
       height: 60,
       disableDefaultTabController: true,
cornerRadius: 12,
      items:  [
        TabItem(icon: SvgPicture.asset(SvgAssets.homeSvg, width: 100, height: 40,), title: '홈', fontFamily: fontFamilyPretendard),
        TabItem(icon: SvgPicture.asset(SvgAssets.navbarLovationSvg), title: '스팟', fontFamily: fontFamilyPretendard),
        const TabItem(icon: Icons.star_rounded),
        TabItem(icon: SvgPicture.asset(SvgAssets.chatSvg), title: '채팅', fontFamily: fontFamilyPretendard),
        TabItem(icon: SvgPicture.asset(SvgAssets.accountSvg), title: '마이', fontFamily: fontFamilyPretendard),
      ],
      onTap: (int i) => print('click index=$i'),
        ),
    )
    
    );
  }
}


class _ChipBuilder extends ChipBuilder {
 @override
 Widget build(BuildContext context, Widget child, int index, bool active) {
   return Stack(
     alignment: Alignment.center,
     children: <Widget>[
       child,
       Positioned.fill(
         child: Align(
           alignment: Alignment.topRight,
           child: Container(
             margin: const EdgeInsets.only(top: 10, right: 10),
             padding: const EdgeInsets.only(left: 4, right: 4),
             child: const Icon(Icons.access_alarm, color: Colors.redAccent),
           ),
         ),
       )
     ],
   );
 }
}