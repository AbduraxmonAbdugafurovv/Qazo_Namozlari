import 'package:flutter/material.dart';
import 'package:qazonamozlari/core/components/button.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';
import 'package:qazonamozlari/core/init/navigation_service.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: context.height * 0.1,
            ),
            Text(
              "Tasdiqlash",
              style: TextStyle(
                  fontSize: FontConst.extraLargeFont,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
            Text(
              "Ma'lumotlaringizni to'griligini tekshiring",
              style: TextStyle(
                  fontSize: FontConst.mediumFont,
                  color: ColorConst.black.withOpacity(0.5)),
            ),
            SizedBox(
              height: context.height * 0.1,
            ),
            subjects("Tugilgan kun", "14 - Senrtabr , 1995"),
            subjects("Ehtilom/hayz vaqti", "22 - aprel 2009"),
            subjects("Namozni boshladingiz", "31 - dekabr 2014"),
            SizedBox(
              height: context.height*0.32,
            ),
            InkWell(
              child: mainButton(context, "Tasdiqlash", ColorConst.green),
              onTap: () {
                NavigationService.instance.pushNamedUnreUntill("yechim");
              },
            )
          ],
        ),
      ),
    );
  }

  Column subjects(text1, text2) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        datas(text1, text2),
        const SizedBox(
          height: 25,
        ),
        Divider(
          color: ColorConst.black.withOpacity(0.7),
        ),
      ],
    );
  }

  Row datas(text1, text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(
              fontSize: FontConst.mediumFont - 1,
              color: ColorConst.black.withOpacity(0.9)),
        ),
        Text(
          text2,
          style: TextStyle(
              fontSize: FontConst.mediumFont + 1, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
