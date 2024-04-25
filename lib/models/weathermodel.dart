class Weathermodel {
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String? image;
  final String weathercondition;
  final String cityname;
  final DateTime date;

  Weathermodel(
      {required this.temp,
      required this.maxtemp,
      required this.mintemp,
      this.image,
      required this.weathercondition,
      required this.cityname,
      required this.date});

  factory Weathermodel.fromJson(json) {
    return Weathermodel(
      image:json['forecast']['forecastday'][0]['day']['condition']['icon'] ,
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        weathercondition: json['forecast']['forecastday'][0]['day']['condition']
            ['text'],
        cityname: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']));
  }
}
