import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  // this
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // until this
  runApp(FireStoreApp());
}

class FireStoreApp extends StatefulWidget {
  const FireStoreApp({Key? key}) : super(key: key);

  @override
  _FireStoreAppState createState() => _FireStoreAppState();
}

class _FireStoreAppState extends State<FireStoreApp> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ------------- CONNECT TO DATABASE -------------
    CollectionReference groceries = FirebaseFirestore.instance.collection('groceries');
    // ------------- CONNECT TO DATABASE -------------
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ------------- CREATE -------------
          title: TextField(
            controller: textController,
          ),
          // ------------- CREATE -------------
        ),
        body: Center(
          // ------------- READ -------------
          child: StreamBuilder(
            stream: groceries.orderBy('name').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: Text('Loading'),);
              }
              return ListView(
                // data! -> guarantee its not null
                children: snapshot.data!.docs.map((grocery) {
                  return Center(
                    child: ListTile(
                      title: Text(grocery['name']),
                      // ------------- DELETE -------------
                      onLongPress: () {
                        grocery.reference.delete();
                      },
                      // ------------- DELETE -------------
                    ),
                  );
                }).toList(),
              );
            }
          ), // ------------- READ -------------
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // ------------- CREATE -------------
            groceries.add({
              'name': textController.text,
            });
            textController.clear();
            // ------------- CREATE -------------
          },
          child: Icon(Icons.save),
        ),
      ),
    );
  }
}