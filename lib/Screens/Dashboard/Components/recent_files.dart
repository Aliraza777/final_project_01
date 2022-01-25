import 'package:final_project_01/Components/list_tile_card.dart';
import 'package:final_project_01/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecentFiles extends StatelessWidget {
  RecentFiles({
    Key? key,
  }) : super(key: key);

  final List<List_Tile> WidgetTilesList = [
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "plumber",
      priority: "Low",
      // tag: "updated",
    ),
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "electric",
      priority: "normal",
      // tag: "updated"
    ),
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "plumber",
      priority: "high",
      // tag: "updated"
    ),
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "electric",
      priority: "Low",
      // tag: "new"
    ),
    List_Tile(
      title: "Title 1 ",
      addr: "Dorm-F-12",
      name: "Zia ur Rehman",
      status: "InComplete",
      assign: "mujtaba",
      service: "plumber",
      priority: "Low",
      // tag: "new"
    ),
    List_Tile(
      title: "Title 2 ",
      addr: "Dorm-G-102",
      name: "Muhammad Ali Raza",
      status: "InProgress",
      assign: "Haris",
      service: "plumber",
      priority: "normal",
      // tag: "new"
    ),
    List_Tile(
      title: "Title 3 ",
      addr: "Dorm-D-7",
      name: "Mahnoor Awan",
      status: "Completed",
      assign: "Haroon",
      service: "plumber",
      priority: "Low",
      // tag: "new"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List_Tile info;
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Center(
              //   child: Stack(
              //     alignment: AlignmentDirectional.topEnd,
              //     children: [
              //       Container(
              //         padding: EdgeInsets.all(12.0),
              //         child: ElevatedButton(
              //           style: TextButton.styleFrom(
              //             padding: EdgeInsets.symmetric(
              //               horizontal: defaultPadding * 1.5,
              //               vertical: defaultPadding /
              //                   (Responsive.isMobile(context) ? 2 : 1),
              //             ),
              //           ),
              //           onPressed: () {},
              //           child: Text("New"),
              //         ),
              //       ),
              //       Icon(
              //         Icons.new_releases_outlined,
              //         size: 20,
              //         color: Colors.yellow,
              //       ),
              //     ],
              //   ),
              // ),
              // Center(
              //   child: Stack(
              //     alignment: AlignmentDirectional.topEnd,
              //     children: [
              //       Container(
              //         padding: EdgeInsets.all(12.0),
              //         child: ElevatedButton(
              //           style: TextButton.styleFrom(
              //             padding: EdgeInsets.symmetric(
              //               horizontal: defaultPadding * 1.5,
              //               vertical: defaultPadding /
              //                   (Responsive.isMobile(context) ? 2 : 1),
              //             ),
              //           ),
              //           onPressed: () {},
              //           child: Text("Updated"),
              //         ),
              //       ),
              //       Icon(
              //         Icons.info_outline,
              //         size: 20,
              //         color: Colors.yellow,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
          Text(
            "Recent Files",
            // style: Theme.of(context).textTheme.subtitle1,
            style: TextStyle(
              color: secondaryColor,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 300,
              child: ListView(
                //The list view for complaints.
                children: [...WidgetTilesList],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "More Files",
              // style: Theme.of(context).textTheme.subtitle1,
              style: TextStyle(
                color: secondaryColor,
              ),
              // textAlign: AlignmentDirectional.bottomEnd,
            ),
          ),
        ],
      ),
    );
  }
}
