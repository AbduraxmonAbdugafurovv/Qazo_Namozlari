import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:qazonamozlari/core/init/navigation_service.dart';
import 'package:qazonamozlari/service/getstorage_service.dart';

class SignStrapiService {
  static signInPost({
    required String email,
    required String password,
  }) async {
    String myAPI = "http://localhost:1337/api";
    try {
      Response res = await Dio().post(
        "$myAPI/auth/local",
        data: {
          "identifier": email,
          "password": password,
        },
      );

      if (res.statusCode == HttpStatus.ok) {
        await GetStorageService.instance.box.write("token", res.data["jwt"]);
        NavigationService.instance.pushNamed("first_question");
      } else {
        debugPrint("Error while loginnnnn");
      }
    } catch (e) {
      debugPrint("Error while loginu");
    }
  }

  static signUpPost({
    required String username,
    required String email,
    required String password,
  }) async {
    String myAPI = "http://localhost:1337/api";
    try {
      Response res = await Dio().post(
        "$myAPI/auth/local/register",
        data: {
          "username": username,
          "email": email,
          "password": password,
        },
      );
      if (res.statusCode == HttpStatus.ok) {
        await GetStorageService.instance.box.write("token", res.data["jwt"]);
        NavigationService.instance.pushNamed("first_question");
      } else {
        return debugPrint("Error while loginnnnn");
      }
    } catch (e) {
      debugPrint("Error while login");
    }
  }
}
