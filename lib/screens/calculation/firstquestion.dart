import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazonamozlari/core/components/button.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

class FirstQuestion extends StatelessWidget {
  const FirstQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: context.height*0.12,),
            SvgPicture.asset("assets/icons/question.svg"),
            SizedBox(height: context.height*0.1,),
            Text(
              "qazonianiqlash".tr(),
              style: TextStyle(
                fontSize: FontConst.extraLargeFont,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: context.height*0.38,
            ),
            InkWell(
              child: mainButton(context, "tushunarli".tr(), ColorConst.green),
              onTap: (){
                Navigator.pushNamed(context, "clock");
              },
            )
          ],
        ),
      ),
    );
  }
}
