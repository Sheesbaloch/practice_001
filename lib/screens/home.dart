import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_001/constants/image_path.dart';
import 'package:practice_001/screens/data.dart';
import 'package:practice_001/screens/login.dart';
import 'package:practice_001/screens/weather.dart';
import 'package:practice_001/widgets/background.dart';
import 'package:practice_001/widgets/row_Title.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current_index = 0;
  void _setSelectedIndex(int index) {
    setState(() {
      _current_index = index;
    });
  }

  List<Widget> _page_list = [WeatherPage(), DataInfo(), Login()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.transparent)),
      backgroundColor: Colors.black,
      body: _page_list[_current_index],
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Weather'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Information'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
        ],
        currentIndex: _current_index,
        onTap: _setSelectedIndex,
      ),
    );
  }
}

Widget content(BuildContext context) {
  int _current_index = 0;
  List<Widget> _page_list = [WeatherPage(), DataInfo(), Login()];

  return Scaffold();
}
