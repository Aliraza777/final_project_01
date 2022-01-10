import 'package:final_project_01/dashboard.dart';
import 'package:final_project_01/sideMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants.dart';
import '../responsive.dart';
import 'list_tile_card.dart';

class Completed extends StatelessWidget {
  Completed({
    Key? key,
  }) : super(key: key);
  final List<List_Tile> WidgetTilesList = [
    List_Tile(
      title: "Title 2 ",
      addr: "Dorm-G-102",
      name: "Muhammad Ali Raza",
      status: "InProgress",
      assign: "Haris",
      service: "plumber",
      priority: "normal",
    ),
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "Shahbaz",
      service: "plumber",
      priority: "Low",
    ),
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "electric",
      priority: "normal",
    ),
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "plumber",
      priority: "high",
    ),
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "electric",
      priority: "Low",
    ),
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "plumber",
      priority: "Low",
    ),
    List_Tile(
      title: "Title 2 ",
      addr: "Dorm-G-102",
      name: "Muhammad Ali Raza",
      status: "InProgress",
      assign: "Haris",
      service: "plumber",
      priority: "normal",
    ),
    List_Tile(
      title: "Title 3 ",
      addr: "Dorm-D-7",
      name: "Mahnoor Awan",
      status: "Completed",
      assign: "Haroon",
      service: "plumber",
      priority: "Low",
    ),
    List_Tile(
      title: "Title 3 ",
      addr: "Dorm-D-7",
      name: "Mahnoor Awan",
      status: "Completed",
      assign: "Haroon",
      service: "plumber",
      priority: "Low",
    ),
    List_Tile(
      title: "Title 3 ",
      addr: "Dorm-D-7",
      name: "Mahnoor Awan",
      status: "Completed",
      assign: "Haroon",
      service: "plumber",
      priority: "Low",
    ),
    List_Tile(
      title: "Title 3 ",
      addr: "Dorm-D-7",
      name: "Mahnoor Awan",
      status: "Completed",
      assign: "Haroon",
      service: "plumber",
      priority: "Low",
    ),
    List_Tile(
      title: "Title 3 ",
      addr: "Dorm-D-7",
      name: "Mahnoor Awan",
      status: "Completed",
      assign: "Haroon",
      service: "plumber",
      priority: "Low",
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
              Header(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Completed compliants",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 600,
                  child: ListView(
                    //The list view for complaints.
                    children: [...WidgetTilesList],
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

class CompletedScreen extends StatelessWidget {
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
              child: Completed(),
            ),
          ],
        ),
      ),
    );
  }
}
