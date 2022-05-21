import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

Column onboardingAfterImg(BuildContext context, mainText, text, icon) {
  return Column(
    children: [
      SizedBox(
        height: context.height * 0.03,
      ),
      SvgPicture.asset(icon),
      SizedBox(
        height: context.height * 0.03,
      ),
      Text(
        mainText,
        style: TextStyle(
            fontSize: FontConst.largeFont + 2, fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: context.height * 0.027,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          text,
          style: TextStyle(
            fontSize: FontConst.mediumFont,
            color: ColorConst.black.withOpacity(0.5),
          ),
        ),
      ),
      SizedBox(
        height: context.height * 0.15,
      ),
    ],
  );
}
