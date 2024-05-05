
import 'package:flutter/cupertino.dart';
import 'package:luv_it/view/utils/color.dart';

import 'business_logic.dart';

class AppTextStyle {

   static const String _pretendard = 'Pretendard';


  static TextStyle light300_14 = TextStyle(
    // static final String _pretendard = 'Pretendard';
    fontFamily: _pretendard,
    fontWeight: FontWeight.w300,
    fontSize: getWidth(14.0),
     color: AppColors.textTitleWhite
  );

    static TextStyle light300_15 = TextStyle(
    // static final String _pretendard = 'Pretendard';
    fontFamily: _pretendard,
    fontWeight: FontWeight.w300,
    fontSize: getWidth(15.0),
     color: AppColors.textSubtitleWhite
  );


  static TextStyle light300_24 = TextStyle(
    fontFamily: _pretendard,
    fontWeight: FontWeight.w300,
    fontSize: getWidth(24.0),
   color: AppColors.textTitleWhite
  );

static TextStyle regular400_14 = TextStyle(
    fontFamily: _pretendard,
    fontWeight: FontWeight.w400,
    fontSize: getWidth(14.0),
     color: AppColors.textTitleWhite
  );

  static TextStyle medium500_14 = TextStyle(
    fontFamily: _pretendard,
    fontWeight: FontWeight.w500,
    fontSize: getWidth(14.0),
     color: AppColors.textTitleWhite
  );
  static TextStyle bold700_14 = TextStyle(
    fontFamily: _pretendard,
    fontWeight: FontWeight.w700,
    fontSize: getWidth(14.0),
  color: AppColors.textTitleWhite
  );


    static TextStyle bold700_24 = TextStyle(
    fontFamily: _pretendard,
    fontWeight: FontWeight.w700,
    fontSize: getWidth(24.0),
     color: AppColors.textTitleWhite
  );

  static TextStyle bold700_28 = TextStyle(
    fontFamily: _pretendard,
    fontWeight: FontWeight.w700,
    fontSize: getWidth(28.0),
     color: AppColors.textTitleWhite
  );

}