import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/getweather_cubit.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetweatherCubit(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        home: HomeView(),
      ),
    );
  }

 MaterialColor getThemeColor(String condition) {
  // Convert the condition to lowercase for case-insensitive comparison
  condition = condition.toLowerCase();

  switch (condition) {
    case 'sunny':
      return Colors.amber;
    case 'partly cloudy':
      return Colors.orange;
    case 'cloudy':
      return Colors.grey;
    case 'overcast':
      return Colors.blueGrey;
    case 'mist':
      return Colors.blue;
    case 'patchy rain possible':
    case 'patchy snow possible':
    case 'patchy sleet possible':
    case 'patchy freezing drizzle possible':
      return Colors.lightBlue;
    case 'thundery outbreaks possible':
      return Colors.deepPurple;
    case 'blowing snow':
    case 'blizzard':
    case 'patchy light snow with thunder':
    case 'moderate or heavy snow with thunder':
      return Colors.lightBlue;
    case 'fog':
    case 'freezing fog':
      return Colors.grey;
    case 'patchy light drizzle':
    case 'light drizzle':
    case 'freezing drizzle':
    case 'heavy freezing drizzle':
      return Colors.lightBlue;
    case 'patchy light rain':
    case 'light rain':
    case 'moderate rain at times':
    case 'moderate rain':
    case 'heavy rain at times':
    case 'heavy rain':
      return Colors.blue;
    case 'light freezing rain':
    case 'moderate or heavy freezing rain':
      return Colors.lightBlue;
    case 'light sleet':
    case 'moderate or heavy sleet':
      return Colors.cyan;
    case 'patchy light snow':
    case 'light snow':
    case 'patchy moderate snow':
    case 'moderate snow':
    case 'patchy heavy snow':
    case 'heavy snow':
      return Colors.blueGrey;
    case 'ice pellets':
      return Colors.blue;
    case 'light rain shower':
    case 'moderate or heavy rain shower':
    case 'torrential rain shower':
    case 'patchy light rain with thunder':
    case 'moderate or heavy rain with thunder':
      return Colors.lightBlue;
    case 'light sleet showers':
    case 'moderate or heavy sleet showers':
      return Colors.cyan;
    case 'light snow showers':
    case 'moderate or heavy snow showers':
      return Colors.blueGrey;
    case 'light showers of ice pellets':
    case 'moderate or heavy showers of ice pellets':
   
    
      return Colors.blueGrey;
    default:
      // Return a default color if the condition is not matched
      return Colors.grey;
  }
}
}
