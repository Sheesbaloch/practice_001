import 'package:flutter/material.dart';
import 'package:practice_001/constants/image_path.dart';
import 'package:practice_001/widgets/background.dart';
import 'package:practice_001/widgets/row_Title.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "📍   Balochistan",
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          ),
          Text(
            'Good Morning! Shees Baloch',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
          Center(
            child: Image.asset(
              ImagePaths.thunder,
              scale: 2,
            ),
          ),
          Center(
              child: Text(
            '21 °C',
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.w500),
          )),
          Center(
            child: Text(
              'THUNDERSTROM',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Center(
            child: Text(
              'Friday 16 - 09 41am',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                rowTitle(
                  name: 'Sunrise',
                  value: '5:34 am',
                  imagePath: 'assets/images/11.png',
                ),
                rowTitle(
                  name: 'Sunset',
                  value: '6:34 pm',
                  imagePath: 'assets/images/12.png',
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.3,
            color: Color.fromARGB(137, 89, 89, 89),
            endIndent: 50,
            indent: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                rowTitle(
                  name: 'Hot temp',
                  value: '32°C',
                  imagePath: 'assets/images/13.png',
                ),
                rowTitle(
                  name: 'Cold temp',
                  value: '2°C',
                  imagePath: 'assets/images/14.png',
                ),
              ],
            ),
          )
        ])
      ],
    );
    ;
  }
}
