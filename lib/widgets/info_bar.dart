import 'package:flutter/material.dart';
import 'package:practice_001/constants/image_path.dart';

class InfoBar extends StatelessWidget {
  InfoBar({super.key, this.name, this.city, this.type});
  String? name;
  String? city;
  String? type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 65,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 249, 248, 248),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                          backgroundImage: ExactAssetImage(ImagePaths.profile)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name!,
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'TimeNewRoman'),
                        ),
                        Text(
                          city!,
                          style: TextStyle(
                              fontSize: 12, fontFamily: 'TimeNewRoman'),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: Stack(
                        children: [
                          Image.asset(ImagePaths.bloodDrop),
                          // Container(
                          //   height: 45,
                          //   width: 45,
                          //   decoration: BoxDecoration(color: Colors.red),
                          // ),
                          Center(
                            child: Text(
                              type!,
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'TimeNewRoman'),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
