import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class writeexample extends StatefulWidget {
  const writeexample({Key? key}) : super(key: key);

  @override
  _writeexampleState createState() => _writeexampleState();
}

class _writeexampleState extends State<writeexample> {
  final database = FirebaseDatabase.instance.ref();
  // final database = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    final manager = database.child('/manager');
    return Scaffold(
      appBar: AppBar(
        title: Text("Test data send"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  try {
                    await manager.set({
                      'name': 'Ali',
                      'email': 'ali@gmail.com',
                      'phone': '0234198999',
                    });
                    print("data written");
                  } catch (e) {
                    print("you got an error $e");
                  }
                },
                child: Text("Simple test"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
