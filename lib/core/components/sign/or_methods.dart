
  import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

Container orMethods(BuildContext context, text, icon) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
              color: ColorConst.black.withOpacity(0.2),
              spreadRadius: 0.4,
              blurRadius: 3,
              offset: const Offset(0, 5)),
        ],
        color: ColorConst.white,
      ),
      width: context.width * 0.4,
      height: context.height * 0.06,
      child: Row(children: [
        SizedBox(
          width: context.width * 0.04,
        ),
        SvgPicture.asset(icon),
        SizedBox(
          width: context.width * 0.03,
        ),
        Text(
          text,
          style: TextStyle(fontSize: FontConst.mediumFont),
        ),
      ]),
    );
  }
