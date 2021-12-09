import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sv_rms_mobile/ui/complaints/file_complaint_screen.dart';
import 'package:sv_rms_mobile/ui/complaints/widgets/complaint_tile.dart';
import 'package:sv_rms_mobile/widgets/custom_fab.dart';

class ComplaintsScreen extends StatefulWidget {
  const ComplaintsScreen({Key? key}) : super(key: key);

  static const String route = "complaintScreen";
  @override
  _ComplaintsScreenState createState() => _ComplaintsScreenState();
}

class _ComplaintsScreenState extends State<ComplaintsScreen> {
  late ScrollController controller;
  bool _isExtended = false;
  @override
  void initState() {
    super.initState();
    controller = ScrollController();
    controller.addListener(() {
      if (controller.position.userScrollDirection == ScrollDirection.reverse) {
        setState(() {
          _isExtended = true;
        });
      } else {
        setState(() {
          _isExtended = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFab(
        onTap: () {
          Navigator.pushNamed(context, FileComplaintScreen.route);
        },
        isExtended: _isExtended,
        label: "File Complaint",
        iconData: Icons.add_comment_outlined,
      ),
      body: CustomScrollView(
        controller: controller,
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverAppBar(
            pinned: true,
            title: Text(
              "Complaints",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              // IconButton(
              //   onPressed: () {
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const ViewInvoicesScreen(
              //           isEdit: true,
              //         ),
              //       ),
              //     );
              //   },
              //   icon: const Icon(
              //     Icons.edit,
              //   ),
              // )
            ],
          ),
          SliverPadding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const ComplaintTile(
                  comment: 'There is a problem with.......',
                  description: 'There is a problem with.......',
                  label: 'Problem with Something',
                  status: 'Resolved',
                ),
                childCount: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
