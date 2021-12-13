import 'package:flutter/material.dart';

class OthersScreen extends StatefulWidget {
  const OthersScreen({Key? key}) : super(key: key);
  static const String route = "othersScreen";
  @override
  _OthersScreenState createState() => _OthersScreenState();
}

class _OthersScreenState extends State<OthersScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            title: Text(
              "Others",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Availability Time in Certain Bracket",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          OtherTile(
            label: "Specify Availability Time if in certain bracket",
            value: "avail time",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Notice For Full Day Task",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          OtherTile(
            label: "Notice Time For Full Day Task",
            value: "time notice",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Consultant Hired / Engaged",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          OtherTile(
            label: "Consultant Hired / Engaged From",
            value: "Recruiter Consultant Kashif - Ali",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Position Against Hiring",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          OtherTile(
            label: "Position Against Which Consultant is hired",
            value: "Application On Email",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Coverage Area",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          OtherTile(
            label: "City & Country",
            value: "Kabul, Afghanistan",
          ),
          OtherTile(
            label: "City & Country",
            value: "Taxila, Pakistan",
          ),
          OtherTile(
            label: "City & Country",
            value: "Islamabad, Pakistan",
          ),
          OtherTile(
            label: "City & Country",
            value: "Lahore, Pakistan",
          ),
          OtherTile(
            label: "City & Country",
            value: "Gujranwala, Pakistan",
          ),
          OtherTile(
            label: "City & Country",
            value: "Multan, Pakistan",
          ),
          OtherTile(
            label: "City & Country",
            value: "Peshawar, Pakistan",
          ),
        ],
      ),
    );
  }
}

class OtherTile extends StatelessWidget {
  const OtherTile({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label, value;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(height: 12),
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              value,
              style: const TextStyle(),
            ),
            const Divider(height: 12)
          ],
        ),
      ),
    );
  }
}
