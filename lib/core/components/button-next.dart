import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazonamozlari/core/constant/constant.dart';

import 'package:qazonamozlari/core/extension/contex_ex.dart';

nextButton(BuildContext context) {
  return Container(
      height: context.height * 0.065,
      width: context.width,
      decoration: BoxDecoration(
          color: ColorConst.green, borderRadius: BorderRadius.circular(7)),
      alignment: Alignment.center,
      child: SvgPicture.asset("assets/icons/next.svg"));
}
