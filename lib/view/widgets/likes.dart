import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luv_it/view/utils/app_text_style.dart';
import 'package:luv_it/view/utils/color.dart';
import 'package:luv_it/view/utils/constants.dart';
import 'package:luv_it/view/utils/custom_boxes.dart';



class LikeBox extends StatelessWidget {
  const LikeBox(
      {super.key,
      required this.svgImage,
      required this.text,
      this.hasIcon = true,
      this.borderColor,
      this.backgroundColor,
   });

  final String svgImage;
  final String text;
  final bool? hasIcon;
  final Color? borderColor;
  final Color? backgroundColor;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(vertical: w5, horizontal: w7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(w20),
        color: backgroundColor ?? AppColors.navBarBackgroundBlack,
        border: Border.all(color: borderColor ?? Colors.white.withOpacity(.2)),
      ),
      child: hasIcon!
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  svgImage,
                  width: w13,
                  height: w13,
                ),
                width4,
                Text(
                  text,
                  style: AppTextStyle.light300_14,
                ),
              ],
            )
          : Text(
              text,
              style: AppTextStyle.light300_14,
            ),
    );
  }
}

class LikeContainerWithPNG extends StatelessWidget {
  const LikeContainerWithPNG(
      {super.key,
      required this.icon,
      required this.text,
      this.hasIcon = true,
      this.borderColor,
      this.backgroundColor,
      this.textColor});

  final String icon;
  final String text;
  final bool? hasIcon;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(vertical: w7, horizontal: w10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(w20),
        color: backgroundColor ?? AppColors.navBarBackgroundBlack,
        border: Border.all(color: borderColor ?? Colors.white.withOpacity(.2)),
      ),
      child: hasIcon!
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  icon,
                  width: w16,
                  height: w16,
                ),
                width4,
                Text(
                  text,
                  style: AppTextStyle.regular400_14.copyWith(
                    color: textColor ?? AppColors.textTitleWhite,
                  ),
                ),
              ],
            )
          : Text(
              text,
              style: AppTextStyle.regular400_14,
            ),
    );
  }
}
