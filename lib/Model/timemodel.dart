

import 'dart:convert';

class timemodel {
  double temp;
  double speed;
  int humidity;
  timemodel(
      this.temp,
      this.speed,
      this.humidity,
      );
  timemodel.fromJson(int x, Map<String, dynamic> json) {
    this.temp = json["list"][x]["main"]["temp"];
    this.speed = json["list"][x]["wind"]["speed"];
    this.humidity = json["list"][x]["main"]["humidity"];
  }
}
