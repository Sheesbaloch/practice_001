import 'package:practice_001/constants/image_path.dart';

class Person {
  final String name;
  final String location;
  final String imagePath;

  Person({required this.name, required this.location, required this.imagePath});
  static List<Person> personInfo = [
    Person(
        name: 'Shees Baloch',
        location: 'Balochistan',
        imagePath: ImagePaths.profile1),
    Person(
        name: 'Superman Baloch',
        location: 'Gujrat',
        imagePath: ImagePaths.profile2),
    Person(
        name: 'Spiderman Baloch',
        location: 'Gujranwala',
        imagePath: ImagePaths.profile3),
    Person(
        name: 'Ironman Baloch',
        location: 'lahore',
        imagePath: ImagePaths.profile4),
    Person(
        name: 'Thor Baloch',
        location: 'islamabad',
        imagePath: ImagePaths.profile5),
    Person(
        name: 'Loki Baloch',
        location: 'JalalPur Jatan',
        imagePath: ImagePaths.profile6),
    Person(
        name: 'Thanos Baloch',
        location: 'Jehlum',
        imagePath: ImagePaths.profile7),
    Person(
        name: 'Acquaman Baloch',
        location: 'Quetta',
        imagePath: ImagePaths.profile8),
    Person(
        name: 'ms Marvel Baloch',
        location: 'Rawat',
        imagePath: ImagePaths.profile9),
    Person(
        name: 'Antman Baloch',
        location: 'Balochistan',
        imagePath: ImagePaths.profile10),
  ];
}
