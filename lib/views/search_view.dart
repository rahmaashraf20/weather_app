import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/getweather_cubit.dart';
import 'package:weather_app/models/weathermodel.dart';
import 'package:weather_app/services/weatherservice.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('search city'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              onSubmitted: (value) async {
                var getweathercubit = BlocProvider.of<GetweatherCubit>(context);
                getweathercubit.getweather(cityname: value);

                Navigator.pop(context);
              },
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                  hintText: 'Enter your city',
                  suffixIcon: const Icon(Icons.search),
                  labelText: 'search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Colors.orange))),
            ),
          ),
        ));
  }
}
