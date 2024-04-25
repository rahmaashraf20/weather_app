import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/getweather_cubit.dart';
import 'package:weather_app/cubit/get_weather_cubit/getweather_state.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/Noweather.dart';
import 'package:weather_app/widgets/Weatherinfo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WeatherApp'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SearchView();
                    },
                  ),
                );
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: BlocBuilder<GetweatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is NoWeatherState) {
              return NoWeather();
            } else if (state is WeatherLoadedState) {
              return Weatherinfo();
            } else {
              return Text('oops');
            }
          },
        ));
  }
}
