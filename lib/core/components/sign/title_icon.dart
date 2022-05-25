
  import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qazonamozlari/core/constant/constant.dart';

Row titleSign(text) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: FontConst.mediumFont + 2,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                child: SvgPicture.asset("assets/icons/oy.svg"),
              ),
            ],
          );
  }
