import 'dart:convert';
import'package:getxweater/Model/timemodel.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';



class AppController extends GetxController {
  String myUrl =
      "http://api.openweathermap.org/data/2.5/forecast?id=292223&appid=6f7da9398f13d39116acfe188f142862";
var selected =0.obs;
  var speed;
  var humidity;
  var temp;

  @override
  void onInit() {
    getData(selected.toInt());
    super.onInit();
  }

  Future getData(int time) async {
    http.Response response = await http.get(myUrl);
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      speed = timemodel.fromJson(time,result).speed;
      humidity = timemodel.fromJson(time,result).humidity;
      temp = (timemodel.fromJson(time,result).temp- 272.5).toInt();

      update();
    }
    return false;
  }

}
