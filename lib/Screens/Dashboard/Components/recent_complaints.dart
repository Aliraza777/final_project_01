import 'package:final_project_01/Components/list_tile_card.dart';
import 'package:final_project_01/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecentComplaints extends StatelessWidget {
  RecentComplaints({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Complaints",
            style: TextStyle(
              color: kSecondaryColor,
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
              "More Comaplints",
              style: TextStyle(
                color: kSecondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
