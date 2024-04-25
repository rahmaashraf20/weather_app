import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/getweather_cubit.dart';

class Weatherinfo extends StatelessWidget {
  const Weatherinfo({super.key});

  @override
  Widget build(BuildContext context) {
  var weathermodel =  BlocProvider.of<GetweatherCubit>(context).weathermodel;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              weathermodel.cityname,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            Text('update at : ${weathermodel.date.hour}:${weathermodel.date.minute}'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("https:${weathermodel.image}"),
                Text(
                  weathermodel.temp.toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [Text('maxtemp:${weathermodel.maxtemp.round()}'), 
                  Text('mintemp:${weathermodel.mintemp.round()}')],
                )
              ],
            ),
            SizedBox(height: 16,),
            Text(weathermodel.weathercondition,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32
            ),)
          ],
        ),
      ),
    );
  }
}
