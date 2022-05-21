import 'package:flutter/material.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

SizedBox langselect(BuildContext context, String text, String image) {
  return SizedBox(
    width: context.width * 0.85,
    height: context.height * 0.1,
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: context.width * 0.02,
            ),
            SizedBox(
              height: context.height * 0.08,
              width: context.width * 0.08,
              child: Image.asset(image),
            ),
            SizedBox(
              width: context.width * 0.03,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: FontConst.mediumFont, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Divider(
          color: ColorConst.black.withOpacity(0.4),
        )
      ],
    ),
  );
}
