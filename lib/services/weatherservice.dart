import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weathermodel.dart';

class Weatherservice {
  final Dio dio;
  final String baseurl = 'https://api.weatherapi.com/v1';
  final String apikey = '41bd56d419514e57b8c153413230912';

  Weatherservice(this.dio);
  Future<Weathermodel> getcurrentweather({required String cityname}) async {
    try {
      Response response = await dio
          .get('$baseurl/forecast.json?key=$apikey&q=$cityname&days=1');

      Weathermodel weathermodel = Weathermodel.fromJson(response.data);
      return weathermodel;
    } on DioException catch (e) {
      final String errormessage = e.response?.data['error']['message'] ??
          'oops there was an error try later ';
      throw Exception(errormessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops try later');
    }
  }
}
