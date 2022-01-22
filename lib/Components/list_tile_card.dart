import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class List_Tile extends StatelessWidget {
  List_Tile({
    required this.title,
    required this.addr,
    required this.name,
    required this.status,
    required this.assign,
    required this.service,
    required this.priority,
    // required this.tag
  });
  final String title;
  final String name;
  final String addr;
  final String status;
  final String assign;
  final String service;
  final String priority;
  // final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.blue[300],
        child: InkWell(
          onTap: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => ReportScreen()));
          },
          child: ListTile(
            tileColor: Colors.blue[300],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
            title: Center(child: Text(title)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Name : " +
                      name +
                      "    Address : " +
                      addr +
                      "\n" +
                      "Assignment : " +
                      assign +
                      "    Status :" +
                      status +
                      "\n" +
                      "Service : " +
                      service +
                      "    Priority : " +
                      priority,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}
