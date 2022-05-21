import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazonamozlari/core/components/langselection.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

class LangPage extends StatefulWidget {
  const LangPage({Key? key}) : super(key: key);

  @override
  State<LangPage> createState() => _LangPageState();
}

class _LangPageState extends State<LangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: context.height * 0.06,
            ),
            SizedBox(
              height: context.height * 0.1,
              width: context.width * 0.4,
              child: SvgPicture.asset("assets/icons/lang.svg"),
            ),
            SizedBox(height: context.height * 0.1),
            Text(
              "Tilni tanlang/Bыберите  язык",
              style: TextStyle(
                  fontSize: FontConst.largeFont, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: context.height * 0.2,
            ),
            InkWell(
              child:
                  langselect(context, "O'zbek tili", "assets/icons/flaguz.png"),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, "onboarding", (route) => false);
              },
            ),
            InkWell(
              child: langselect(
                  context, "English language", "assets/icons/uk.png"),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, "onboarding", (route) => false);
              },
            ),
            InkWell(
              child: langselect(context, "Русский язык", "assets/icons/ru.png"),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, "onboarding", (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
