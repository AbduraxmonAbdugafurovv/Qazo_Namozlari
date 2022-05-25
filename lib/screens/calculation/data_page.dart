import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazonamozlari/core/components/button-next.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  int pageIndex = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.height * 0.8,
            child: PageView(
              controller: _pageController,
              children: [
                birthview(context),
                Container(),
              ],
              onPageChanged: (int index) {
                setState(() {
                  pageIndex = index;
                });
              },
            ),
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: nextButton(context),
            ),
            onTap: () {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut);
            },
          )
        ],
      ),
    );
  }

  Column birthview(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.height * 0.1),
        SvgPicture.asset("assets/icons/clock.svg"),
        SizedBox(
          height: context.height * 0.06,
        ),
        Text(
          "Tug'ilgan kuningiz",
          style: TextStyle(
              fontSize: FontConst.extraLargeFont, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: context.height * 0.1),
        SizedBox(
          height: context.height * 0.3,
          width: double.infinity,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (value) {},
            initialDateTime: DateTime.now(),
          ),
        ),
        SizedBox(height: context.height * 0.1),
      ],
    );
  }
}
