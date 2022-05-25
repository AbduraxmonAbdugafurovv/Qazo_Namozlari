
  import 'package:flutter/material.dart';
import 'package:qazonamozlari/core/constant/constant.dart';

TextFormField inputfield(controller, text,IconData icon) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        prefixIcon: Icon(
          icon,
          color: ColorConst.black,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return "Hato";
        }
      },
    );
  }
