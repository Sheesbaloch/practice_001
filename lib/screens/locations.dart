import 'package:flutter/material.dart';
import 'package:practice_001/widgets/info_bar.dart';

class Location extends StatelessWidget {
  Location({this.name, this.city, super.key});
  String? name;
  String? city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InfoBar(
      name: "Shees Baloch",
      city: "balochistan",
      type: 'O+',
    ));
  }
}
