import 'package:flutter/material.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

 mainButton(BuildContext context, text) {
  return Container(
    height: context.height * 0.065,
    width: context.width,
    decoration: BoxDecoration(
        color: ColorConst.green, borderRadius: BorderRadius.circular(7)),
    alignment: Alignment.center,
    child: Text(
      text,
      style: TextStyle(
          color: ColorConst.white,
          fontWeight: FontWeight.w500,
          fontSize: FontConst.mediumFont + 1),
    ),
  );
}
