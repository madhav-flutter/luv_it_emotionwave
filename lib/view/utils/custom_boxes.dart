import 'package:flutter/material.dart';

import 'business_logic.dart';

SizedBox nothing = const SizedBox.shrink();

SizedBox height2 = SizedBox(
  height: getHeight(2.0),
);

SizedBox height4 = SizedBox(
  height: getHeight(4.0),
);
SizedBox height6 = SizedBox(
  height: getHeight(6.0),
);
SizedBox height8 = SizedBox(
  height: getHeight(8.0),
);
SizedBox height10 = SizedBox(
  height: getHeight(10.0),
);
SizedBox height12 = SizedBox(
  height: getHeight(12.0),
);
SizedBox height16 = SizedBox(
  height: getHeight(16.0),
);
SizedBox height18 = SizedBox(
  height: getHeight(18.0),
);
SizedBox height20 = SizedBox(
  height: getHeight(20.0),
);
SizedBox height24 = SizedBox(
  height: getHeight(24.0),
);
SizedBox height32 = SizedBox(
  height: getHeight(32.0),
);
SizedBox height36 = SizedBox(
  height: getHeight(36.0),
);
SizedBox height40 = SizedBox(
  height: getHeight(40.0),
);
SizedBox height48 = SizedBox(
  height: getHeight(48.0),
);
SizedBox width16 = SizedBox(
  width: getWidth(16.0),
);
SizedBox width12 = SizedBox(
  width: getWidth(12.0),
);
SizedBox width8 = SizedBox(
  width: getWidth(8.0),
);
SizedBox width6 = SizedBox(
  width: getWidth(6),
);
SizedBox width4 = SizedBox(
  width: getWidth(4.0),
);
SizedBox width2 = SizedBox(
  width: getWidth(2.0),
);

SizedBox customHeight(double height) {
  return SizedBox(height: getHeight(height));
}

SizedBox customWidth(double width) {
  return SizedBox(width: getWidth(width));
}