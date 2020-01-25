import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';

void createRecord() async {

  final databaseReference = Firestore.instance;

  DocumentReference ref = await databaseReference.collection("books")
      .add({
    'title': 'Flutter in Action',
    'description': 'Complete Programming Guide to learn Flutter'
  });
  databaseReference.collection("books")
      .document(ref.documentID)
      .updateData({
    'title': 'Mastering Flutter Tutorial Drunisa',
  });

  databaseReference.collection("books").getDocuments().then((QuerySnapshot snapshot){
    snapshot.documents.forEach((result){
      print(result.documentID);
      Map<String,dynamic> map=new HashMap();
      map=result.data;

    });
  });
/*
  new StreamBuilder(
      stream: Firestore.instance.collection('books').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return new Text('Loading...');
        return new ListView(
          children: snapshot.data.documents.map<Widget>((document) {
            return new ListTile(
              title: new Text(document['title']),
              subtitle: new Text(document['description']),
            );
          }).toList(),
        );
      }),*/
}
