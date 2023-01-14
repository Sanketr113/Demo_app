import 'package:get/get.dart';

class Services extends GetxController {
  var imageUrl = "".obs;

  var name = "".obs;
  var surname = "".obs;
  var rollno = "".obs;
  var state = "".obs;
  var district = "".obs;
  var city = "".obs;
  var address = "".obs;
  var father = "".obs;
  var mother = "".obs;

  void Deletevalue() {
    name = "".obs;
  }
}
// Card(
//                         margin: const EdgeInsets.all(10),
//                         child: Column(
//                           children: [Container()],
//                           children: [
//                           Text(documentSnapshot['name']),
//                           Text(documentSnapshot['surname']),
//                           Text(documentSnapshot['father']),
//                           Text(documentSnapshot['mother']),
//                           Text(documentSnapshot['rollno']),
//                           Text(documentSnapshot['state']),
//                           Text(documentSnapshot['district']),
//                           Text(documentSnapshot['city']),
//                           Text(documentSnapshot['address']),
//                           Ink.image(image: NetworkImage(documentSnapshot['image']),height: 240,)
//                           ],
//                         ),
//                       );