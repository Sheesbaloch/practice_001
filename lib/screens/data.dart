import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_001/models/person_info.dart';
import 'package:practice_001/screens/horizontal_page_scroll.dart';
import 'package:practice_001/widgets/background.dart';
import 'package:practice_001/widgets/information_bar.dart';

class DataInfo extends StatelessWidget {
  const DataInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Person Information',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(Horizontal_Page_Scroll());
              },
              icon: Icon(Icons.next_plan_rounded))
        ],
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Background(),
          ListView.builder(
              itemCount: Person.personInfo.length,
              itemBuilder: ((context, i) {
                return informationBar(
                    name: Person.personInfo[i].name,
                    location: Person.personInfo[i].location,
                    imagePath: Person.personInfo[i].imagePath);
              }))
        ],
      ),
    );
  }
}
