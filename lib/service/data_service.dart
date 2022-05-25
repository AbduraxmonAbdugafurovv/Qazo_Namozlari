import 'package:dio/dio.dart';

class DataService{
  static postData()async{
    var myApi= "http://localhost:1337/api";
    Response res  = await Dio().post("$myApi/")
  }
}