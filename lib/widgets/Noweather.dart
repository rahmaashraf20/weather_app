import 'package:flutter/material.dart';

class NoWeather extends StatelessWidget {
  const NoWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('no weather😒',
          style: TextStyle(fontSize: 30,
          ),),
          Text('please search🔍',style: TextStyle(fontSize: 30
            
          ),)
        ],
      ),
    );
  }
}