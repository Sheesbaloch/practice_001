import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_001/screens/Specialization_Page.dart';

class SearchPage extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  TextEditingController locationcontroller = TextEditingController();
  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 240, 240),
      extendBodyBehindAppBar: true,
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 120,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                //label: Text('Search'),
                                hintText: 'Search',
                                icon: Icon(Icons.search_outlined),
                                focusedBorder: InputBorder.none
                                // focusColor: Colors.white,
                                //fillColor: Colors.white
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                //label: Text('Search'),
                                hintText: 'Location',
                                icon: Icon(
                                  Icons.pin_drop_rounded,
                                ),
                                //iconColor: Color.fromARGB(0, 238, 126, 14),
                                focusedBorder: InputBorder.none
                                // focusColor: Colors.white,
                                //fillColor: Colors.white
                                ),
                          ),
                        ),
                      ),
                      // customTextfield(
                      //   TColor: Colors.white,
                      //   labelName: 'Search',
                      //   fieldIcon: Icon(Icons.search_off_rounded),
                      //   keyboard: TextInputType.text,
                      //   textController: searchcontroller,
                      // ),
                      // SizedBox(
                      //   height: 7,
                      // ),
                      // customTextfield(
                      //   TColor: Colors.white,
                      //   labelName: 'Location',
                      //   fieldIcon: Icon(Icons.pin_drop_rounded),
                      //   keyboard: TextInputType.text,
                      //   textController: locationcontroller,
                      // )
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(const SpecializationPage());
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 21, 1, 79),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset('assets/images/Iconfilter.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 230, 230),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(child: Text('Senior Designer')),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 230, 230),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(child: Text('Designer')),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 230, 230),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(child: Text('Full-time Designer')),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 20),
                                child:
                                    Image.asset('assets/images/Logogoogle.png'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, right: 20),
                                child: Image.asset('assets/images/Save.png'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'UI/UX Designer',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Location',
                              style: TextStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(
                                        255, 232, 230, 230),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Design',
                                    style: TextStyle(color: Colors.black87),
                                  )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(
                                        255, 232, 230, 230),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Full time',
                                    style: TextStyle(color: Colors.black87),
                                  )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 30,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(
                                        255, 232, 230, 230),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Senior Designer',
                                    style: TextStyle(color: Colors.black87),
                                  )),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Time',
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                              Row(
                                children: [
                                  Text('Price'),
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text('/Mo',
                                        style:
                                            TextStyle(color: Colors.black38)),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10)),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child:
                                  Image.asset('assets/images/Dribbblelogo.png'),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 20),
                              child: Image.asset('assets/images/Save.png'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'UI/UX Designer',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Location',
                            style: TextStyle(),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      const Color.fromARGB(255, 232, 230, 230),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Design',
                                  style: TextStyle(color: Colors.black87),
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      const Color.fromARGB(255, 232, 230, 230),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Full time',
                                  style: TextStyle(color: Colors.black87),
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 30,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      const Color.fromARGB(255, 232, 230, 230),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Senior Designer',
                                  style: TextStyle(color: Colors.black87),
                                )),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Time',
                                style: TextStyle(color: Colors.black38),
                              ),
                            ),
                            Row(
                              children: [
                                Text('Price'),
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Text('/Mo',
                                      style: TextStyle(color: Colors.black38)),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   height: 60,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(color: Colors.white),
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 30, right: 30),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Container(
              //           child: Image.asset('assets/images/Home.png'),
              //         ),
              //         Container(
              //           child: Image.asset('assets/images/Connection.png'),
              //         ),
              //         Container(
              //           child: Image.asset('assets/images/Home.png'),
              //         ),
              //         Container(
              //           child: Image.asset('assets/images/Chat.png'),
              //         ),
              //         Container(
              //           child: Image.asset('assets/images/Save.png'),
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
