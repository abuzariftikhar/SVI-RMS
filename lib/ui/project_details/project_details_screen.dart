import 'dart:ui';

import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sv_rms_mobile/ui/bid_now/bid_now_screen.dart';

class ProjectDetailsScreen extends StatefulWidget {
  const ProjectDetailsScreen({Key? key}) : super(key: key);
  static const String route = "projectDetails";
  @override
  _ProjectDetailsScreenState createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                title: const Text(
                  "Project Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_add_outlined,
                      ))
                ],
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "NIC Card Replacement 13 Oct France",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "NIC replacement in controller B.\nFor more information contact relevant whatsapp group or email support@svinternationalltd.com",
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
                      label: "Category",
                      description: "Break-Fix",
                      color: Colors.teal,
                      iconData: Icons.category,
                    ),
                    const DetailsTile(
                      label: "Skills",
                      description: "Level 1 technician",
                      color: Colors.blue,
                      iconData: Icons.vpn_key,
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
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoButton.filled(
                      pressedOpacity: 0.9,
                      child: const Text(
                        "Bid Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, BidNowScreen.route);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DetailsTile extends StatelessWidget {
  const DetailsTile({
    Key? key,
    required this.label,
    required this.description,
    required this.color,
    required this.iconData,
  }) : super(key: key);
  final String label;
  final String description;
  final Color color;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            color: color,
            shape: SquircleBorder(
              radius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconData,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  description,
                  style: const TextStyle(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
