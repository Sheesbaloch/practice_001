import 'package:flutter/material.dart';
import 'package:practice_001/models/person_info.dart';
import 'package:practice_001/screens/person_details.dart';

class informationBar extends StatelessWidget {
  final String name;
  final String location;
  final String imagePath;
  const informationBar(
      {super.key,
      required this.name,
      required this.location,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PersonDetails(
                        name: this.name,
                        location: this.location,
                        imagePath: this.imagePath,
                      )));
        },
        child: Container(
          width: 600,
          height: 70,
          decoration: BoxDecoration(
            color: Color.fromARGB(40, 131, 131, 131),
            border: Border.all(color: Color.fromARGB(164, 87, 87, 87)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imagePath),
                  radius: 26,
                ),
                SizedBox(
                  width: 80,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    Text(
                      location,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              icon: Icon(Icons.dangerous),
                              title: Text("Do you want to Delete?"),
                              actions: [
                                IconButton(
                                    onPressed: () {
                                      setState() {
                                        Person.personInfo
                                            //I have problem with that line, in which I am not able to
                                            //delete the data from that page
                                            .remove(Person.personInfo);
                                      }

                                      ;
                                    },
                                    icon: Icon(
                                      Icons.done,
                                      color: Colors.green,
                                    )),
                                SizedBox(
                                  width: 40,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.cancel,
                                      color: Colors.red,
                                    ))
                              ],
                            );
                          });
                      // setState() {
                      //   Person.personInfo.remove(Person.personInfo);
                      // }
                    },
                    icon: Icon(Icons.delete))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
