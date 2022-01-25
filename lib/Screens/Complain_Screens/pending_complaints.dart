import 'package:final_project_01/Components/list_tile_card.dart';
import 'package:final_project_01/Constants/constants.dart';
import 'package:final_project_01/Responsive/responsive.dart';
import 'package:final_project_01/Screens/MainScreen/Components/sideMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Pending extends StatelessWidget {
  Pending({
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
      assign: "mujtaba",
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.blueGrey.shade600,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Pending compliants",
                style: TextStyle(
                  fontSize: 20,
                  color: secondaryColor,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 600,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: ListView(
                      //The list view for complaints.
                      children: [...WidgetTilesList],
                    ),
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

class PendingScreen extends StatelessWidget {
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
              child: Pending(),
            ),
          ],
        ),
      ),
    );
  }
}
