import 'package:final_project_01/Components/ComplaintsModel.dart';
import 'package:final_project_01/Components/Complaints_info_card.dart';
import 'package:final_project_01/Constants/constants.dart';
import 'package:final_project_01/Responsive/responsive.dart';
import 'package:final_project_01/Screens/Add_Complain_Screen/add_Complain.dart';
import 'package:flutter/material.dart';

import 'Components/ComplaintsSummary.dart';
import 'Components/recent_complaints.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        title: Text("NAMHAL"),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        ComplaintDetails(),
                        SizedBox(height: kDefaultPadding),
                        RecentComplaints(),
                        if (Responsive.isMobile(context))
                          SizedBox(height: kDefaultPadding),
                        if (Responsive.isMobile(context)) ComplaintsSummary(),
                      ],
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    SizedBox(width: kDefaultPadding),
                  // On Mobile means if the screen is less than 850 we dont want to show it
                  if (!Responsive.isMobile(context))
                    Expanded(
                      flex: 2,
                      child: ComplaintsSummary(),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//complaints details
class ComplaintDetails extends StatelessWidget {
  const ComplaintDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Complaints Detail",
              style: TextStyle(
                color: kSecondaryColor,
              ),
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical:
                      kDefaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AddComplain()));
              },
              icon: Icon(Icons.add),
              label: Text("Add Complain"),
            ),
          ],
        ),
        SizedBox(height: kDefaultPadding),
        Responsive(
          mobile: ComplaintsCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: ComplaintsCardGridView(),
          desktop: ComplaintsCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class ComplaintsCardGridView extends StatelessWidget {
  const ComplaintsCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ComplaintsDetails.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          ComplaintsInfoCard(info: ComplaintsDetails[index]),
    );
  }
}
