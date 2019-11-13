import 'package:meta/meta.dart';


class Weather extends Equatable {
  final String cityName;
  final double temperature;

  Weather({
    @required this.cityName,
    @required this.temperature,
  }) : super([cityName, temperature]);
}