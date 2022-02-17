import 'package:final_project_01/Components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../../Constants/constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Complaints Summary",
            style: TextStyle(
              color: secondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Total Complaints",
            color: primaryColor,
            numOfFiles: 114,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "In progress Complaints",
            color: Colors.cyan,
            numOfFiles: 78,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Pending Complaints",
            color: Color(0xFFFFA113),
            numOfFiles: 28,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Completed Complaints",
            color: Colors.green,
            numOfFiles: 8,
          ),
        ],
      ),
    );
  }
}
