import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:luv_it/model/profile_data_model.dart';
import 'package:luv_it/view/utils/app_assets.dart';
import 'package:luv_it/view/utils/business_logic.dart';
import 'package:luv_it/view/utils/custom_boxes.dart';

import '../view/utils/app_text_style.dart';
import '../view/utils/color.dart';
import '../view/utils/constants.dart';
import '../view/widgets/likes.dart';

class HomeScreenViewModel extends GetxController {
  List<Widget> imageSliders = <Widget>[];

  @override
  void onInit() {
    imageSliders = ProfileData.profileData
        .map((item) => item.noProfileLeft != null && item.noProfileLeft!
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "추천 드릴 친구들을 준비 중이에요",
                    style: AppTextStyle.bold700_24,
                  ),
                  height6,
                  Text(
                    '매일 새로운 친구들을 소개시켜드려요',
                    style: AppTextStyle.regular400_14.copyWith(
                        color: AppColors.lastPageSubtitleGrey, fontSize: w16),
                  )
                ],
              )
            : Container(
                margin:  EdgeInsets.all(w5),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: AppColors.textSubtitleBlack, width: 1.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                            borderRadius:
                                 BorderRadius.all(Radius.circular(w20)),
                            child: Image.asset(
                              item.imageUrl,
                              fit: BoxFit.fitHeight,
                              width: 1000,
                              height: 2000,
                            )),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w20),
                              gradient: LinearGradient(
                                colors: [
                                 
                                  AppColors.navBarBackgroundBlack,
                                  AppColors.navBarBackgroundBlack
                                      .withOpacity(0.0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: w10, horizontal: w20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LikeBox(
                                  svgImage: SvgAssets.greyStarSvg,
                                  text: item.likes,
                                ),
                                RichText(
                                    text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: item.name,
                                        style: AppTextStyle.bold700_28),
                                    TextSpan(
                                        text: item.age,
                                        style: AppTextStyle.light300_24),
                                  ],
                                )),
                                item.subtitle != null ? height6 : nothing,
                                item.subtitle != null
                                    ? SizedBox(
                                        width: getWidth(240),
                                        child: Text(
                                          item.subtitle!,
                                          style: AppTextStyle.light300_15,
                                        ))
                                    : nothing,
                                height6,
                                SizedBox(
                                  // color: Colors.red,
                                  width: getWidth(240),
                                  child: Wrap(
                                    runSpacing: w5,
                                    spacing: w3,
                                    children: [
                                      item.common
                                          ? LikeContainerWithPNG(
                                              icon: PngAssets.heartLove,
                                              text: '진지한 연애를 찾는 중',
                                              textColor: Colors.red,
                                              borderColor: Colors.red,
                                              backgroundColor:
                                                  const Color(0xff621133)
                                                      .withOpacity(.45),
                                            )
                                          : nothing,
                                      item.interests.drink
                                          ? const LikeContainerWithPNG(
                                              icon: PngAssets.cup,
                                              text: '전혀 안 함',
                                            )
                                          : nothing,
                                      item.interests.smoke
                                          ? const LikeContainerWithPNG(
                                              icon: PngAssets.smoke,
                                              text: '비흡연',
                                            )
                                          : nothing,
                                      item.interests.workout
                                          ? const LikeContainerWithPNG(
                                              icon: PngAssets.workout,
                                              text: '매일 1시간 이상',
                                            )
                                          : nothing,
                                      item.interests.handshake
                                          ? const LikeContainerWithPNG(
                                              icon: PngAssets.handshake,
                                              text: '만나는 걸 좋아함',
                                            )
                                          : nothing,
                                      item.interests.infp
                                          ? const LikeContainerWithPNG(
                                              hasIcon: false,
                                              text: 'INFP',
                                              icon: '',
                                            )
                                          : nothing,
                                    ],
                                  ),
                                ),
                                height24,
                                Center(
                                  child:
                                      SvgPicture.asset(SvgAssets.arrowDownSvg),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: w36,
                          right: w20,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              border: GradientBoxBorder(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      AppColors.gradientBlue,
                                      AppColors.gradientPurple,
                                    ]),
                                width: 1,
                              ),
                              // borderRadius: BorderRadius.circular(16)
                            ),
                            child: Center(
                              child: SvgPicture.asset(SvgAssets.blueHeartSvg),
                            ),
                          ),
                        ),
                      ],
                    )),
              ))
        .toList();

    super.onInit();
  }
}
