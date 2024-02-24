import 'package:flutter/material.dart';
import 'package:practice_001/models/person_info.dart';

class Horizontal_Page_Scroll extends StatelessWidget {
  const Horizontal_Page_Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Horizontal Scroll View'),
        ),
        body: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Person.personInfo.length,
            itemBuilder: (context, index) {
              return Card(
                borderOnForeground: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  children: [
                    Text(Person.personInfo[index].name),
                    Text(Person.personInfo[index].location)
                  ],
                ),
                // ListTile(
                //   title: Text(Person.personInfo[index].name),
                //   leading: Image.asset(Person.personInfo[index].imagePath),
                //   subtitle: Text(Person.personInfo[index].location),
                // ),
                // elevation: 100.0,
              );
            }));
  }
}
