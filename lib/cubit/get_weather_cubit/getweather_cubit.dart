import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/getweather_state.dart';
import 'package:weather_app/models/weathermodel.dart';
import 'package:weather_app/services/weatherservice.dart';

class GetweatherCubit extends Cubit<WeatherState> {
  GetweatherCubit() : super(NoWeatherState());
   late Weathermodel  weathermodel;

  getweather({required String cityname}) async {
    try {
       weathermodel =
          await Weatherservice(Dio()).getcurrentweather(cityname: cityname);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
