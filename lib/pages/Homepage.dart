import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import '../devises/services.dart';

class homepage extends StatefulWidget {
  const homepage({
    super.key,
  });
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Services services = Get.find<Services>();

  bool IsLoading = false;

  Future<FirebaseApp>? _firebaseapp;

  void intState() {
    super.initState();
    _firebaseapp = Firebase.initializeApp();
  }

  final CollectionReference _user =
      FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            StreamBuilder(
              stream: _user.snapshots(),
              builder: ((context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasData) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemCount: streamSnapshot.data!.docs.length,
                      itemBuilder: ((context, index) {
                        final DocumentSnapshot documentSnapshot =
                            streamSnapshot.data!.docs[index];
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              child: Column(
                                children: [
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          height: 160,
                                          child: Image(
                                            image: NetworkImage(
                                                documentSnapshot['image']),
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return Container(
                                                color: Colors.amber,
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  'NO Image',
                                                  style:
                                                      TextStyle(fontSize: 30),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'image': 'https://cdn.pixabay.com/photo/2014/04/02/10/25/man-303792__340.png',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 60,
                                        ),
                                        Text(
                                          documentSnapshot['name'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'name': 'No Name',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 60,
                                        ),
                                        Text(
                                          documentSnapshot['surname'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'surname': 'No Surname',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 60,
                                        ),
                                        Text(
                                          documentSnapshot['father'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'father': 'No Name',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 60,
                                        ),
                                        Text(
                                          documentSnapshot['mother'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'mother': 'No Name',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 60,
                                        ),
                                        Text(
                                          documentSnapshot['rollno'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'rollno': 'No Rollno',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 60,
                                        ),
                                        Text(
                                          documentSnapshot['state'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'state': 'No Name',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 60,
                                        ),
                                        Text(
                                          documentSnapshot['district'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'district': 'No Name',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 60,
                                        ),
                                        Text(
                                          documentSnapshot['city'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'city': 'No Name',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    semanticContainer: true,
                                    elevation: 10,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 60,
                                        ),
                                        Text(
                                          documentSnapshot['address'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              14,
                                        ),
                                        ElevatedButton(
                                            onPressed: (() async {
                                              setState(() {
                                                IsLoading = true;
                                              });
                                              final docUser = FirebaseFirestore
                                                  .instance
                                                  .collection('users')
                                                  .doc('only-user');

                                              docUser.update({
                                                'address': 'No Address',
                                              });
                                              setState(() {
                                                IsLoading = false;
                                              });
                                            }),
                                            child: Text('Delete'))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  );
                }
                return CircularProgressIndicator();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
