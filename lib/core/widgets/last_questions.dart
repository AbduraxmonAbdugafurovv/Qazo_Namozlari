import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/init/navigation_service.dart';

Row lastQuestionSingUp(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
       Text("akbormi".tr()),
      const SizedBox(
        width: 5,
      ),
      InkWell(
        child: Text(
          "kirish".tr(),
          style: TextStyle(color: ColorConst.blue),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      )
    ],
  );
}

Row lastQuestion(text, text2, way, context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(text),
      const SizedBox(
        width: 5,
      ),
      InkWell(
        child: Text(
          text2,
          style: TextStyle(color: ColorConst.blue),
        ),
        onTap: () {
          NavigationService.instance.pushNamed("sign_up");
        },
      )
    ],
  );
}
