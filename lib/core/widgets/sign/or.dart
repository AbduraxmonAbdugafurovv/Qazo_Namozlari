import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

Row orWidget(BuildContext context) {
  return Row(
    children: [
      SizedBox(
        width: context.width * 0.4,
        child: Divider(
          endIndent: 34,
          thickness: 1,
          color: ColorConst.black.withOpacity(0.4),
        ),
      ),
       Text("yoki".tr()),
      const SizedBox(
        width: 10,
      ),
      SizedBox(
        width: context.width * 0.4,
        child: Divider(
          indent: 24,
          thickness: 1,
          color: ColorConst.black.withOpacity(0.4),
        ),
      )
    ],
  );
}
