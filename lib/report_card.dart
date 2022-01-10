import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Report_Card extends StatelessWidget {
  Report_Card({
    required this.title,
    required this.addr,
    required this.name,
    required this.status,
    required this.assign,
    required this.service,
    required this.priority,
    required this.tag,
    required this.des,
    // required this.date_time,
  });
  final String title;
  final String name;
  final String addr;
  final String status;
  final String assign;
  final String service;
  final String priority;
  final String tag;
  final String des;
  // final DateTime date_time;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Center(child: Text("Title : " + title)),
              ],
            ),
            Row(
              children: [
                Text("Service : " + service),
                InkWell(
                  onTap: () {},
                  child: Text("Assigned to : " + assign),
                ),
              ],
            ),
            Row(
              children: [
                Text("Priority : " + priority),
                InkWell(
                  onTap: () {},
                  child: Text("Status : " + status),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Text("Date : " + DateTime.day.toString()),
            //     Text("Time : " +
            //         date_time.hour.toString() +
            //         " " +
            //         date_time.minute.toString()),
            //   ],
            // ),
            Row(
              children: [
                Text("Description : "),
                Text("    " + des),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
