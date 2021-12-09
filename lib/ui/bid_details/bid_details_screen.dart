import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sv_rms_mobile/ui/home/dashboard/widgets/dash_tile.dart';
import 'package:sv_rms_mobile/ui/project_details/project_details_screen.dart';

class BidDetailsScreen extends StatefulWidget {
  const BidDetailsScreen({Key? key}) : super(key: key);
  static const String route = "bidDetails";
  @override
  _BidDetailsScreenState createState() => _BidDetailsScreenState();
}

class _BidDetailsScreenState extends State<BidDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverAppBar(
                pinned: true,
                title:  Text(
                  "Bid Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // actions: [
                //   IconButton(
                //       onPressed: () {},
                //       icon: const Icon(
                //         Icons.bookmark_add_outlined,
                //       ))
                // ],
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: Stack(
                    children: const [
                      Align(
                        alignment: Alignment.centerRight,
                        child: DashTile(
                          alignmentGeometry: Alignment.centerLeft,
                          color: Colors.deepOrangeAccent,
                          label: "Call Out Rates",
                          amount: "\$45/h",
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: DashTile(
                          alignmentGeometry: Alignment.centerRight,
                          color: Colors.deepPurple,
                          label: "Current Expenses",
                          amount: "\$340",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "NIC Card Replacement 13 Oct France",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Bid Date: 2021-11-29 20:25:33",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Divider(),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const DetailsTile(
                      label: "Payment Type",
                      description: "	All to my account",
                      color: Colors.orange,
                      iconData: Icons.money_rounded,
                    ),
                    const DetailsTile(
                      label: "Booking Type",
                      description: "Hourly - Without Travel",
                      color: Colors.lightGreen,
                      iconData: Icons.merge_type_rounded,
                    ),
                    const DetailsTile(
                      label: "Location(s)",
                      description: "Épagny-Metz-Tessy, France",
                      color: Colors.redAccent,
                      iconData: Icons.location_pin,
                    ),
                    const DetailsTile(
                      label: "Currency",
                      description: "Euros",
                      color: Colors.purple,
                      iconData: Icons.money_outlined,
                    ),
                    const DetailsTile(
                      label: "Duration",
                      description: "Minimum two hours",
                      color: Colors.orange,
                      iconData: Icons.more_time,
                    ),
                    const DetailsTile(
                      label: "No of FE(s) Required",
                      description: "1",
                      color: Colors.pink,
                      iconData: Icons.near_me_outlined,
                    ),
                    const DetailsTile(
                      label: "Start Date/Time",
                      description: "2021-10-13T10:00",
                      color: Colors.green,
                      iconData: Icons.arrow_forward_ios,
                    ),
                    const DetailsTile(
                      label: "End Date/Time",
                      description: "2021-10-13T12:00",
                      color: Colors.red,
                      iconData: Icons.arrow_back_ios_new_rounded,
                    ),
                    const DetailsTile(
                      label: "Tools",
                      description:
                          "Windows Laptop,Laptop Charger,Any Smart Phone with Internet and Camera,Notepad,Basic Screw Driver Set",
                      color: Colors.purple,
                      iconData: Icons.design_services,
                    ),
                    const DetailsTile(
                      label: "Deliverables",
                      description:
                          "Attendance (Check In/Out - Public Holiday - Office Closed - Absent - Leave) Work Report (Text Format Report - No Character Limits - Aplha Numeric)",
                      color: Colors.teal,
                      iconData: Icons.delivery_dining_rounded,
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 120,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoButton.filled(
                      pressedOpacity: 0.9,
                      child: const Text(
                        "Save Changes",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
