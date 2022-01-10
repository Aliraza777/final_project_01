import 'package:final_project_01/report_card.dart';
import 'package:final_project_01/sideMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants.dart';
import '../responsive.dart';

class Report extends StatelessWidget {
  Report({
    Key? key,
  }) : super(key: key);
  final List<Report_Card> WidgetReportList = [
    Report_Card(
      title: "Title 2 ",
      addr: "Dorm-G-102",
      name: "Muhammad Ali Raza",
      status: "InProgress",
      assign: "Haris",
      service: "plumber",
      priority: "normal",
      tag: "",
      des: "This is the template description of the report......",
    ),
    Report_Card(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "Shahbaz",
      service: "plumber",
      priority: "Low",
      tag: "",
      des: "This is the template description of the report......",
    ),
    Report_Card(
      title: "Title 3 ",
      addr: "Dorm-F-102",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "electric",
      priority: "normal",
      tag: "",
      des: "This is the template description of the report......",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // key: context.read<MenuController>().scaffoldKey,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 8.0),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Complete Report",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 600,
                  child: ListView(
                    //The list view for complaints.
                    children: [...WidgetReportList],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: context.read<MenuController>().scaffoldKey,
      // drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: Report(),
            ),
          ],
        ),
      ),
    );
  }
}
