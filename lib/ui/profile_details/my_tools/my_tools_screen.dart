import 'package:flutter/material.dart';

class MyToolsScreen extends StatefulWidget {
  const MyToolsScreen({Key? key}) : super(key: key);
  static const String route = "toolsScreen";
  @override
  _MyToolsScreenState createState() => _MyToolsScreenState();
}

class _MyToolsScreenState extends State<MyToolsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const SliverAppBar(
                  pinned: true,
                  centerTitle: true,
                  title: Text(
                    "Tools",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(16.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        const AdvanceToolsTile(
                          label: "End User Computing",
                          status: "Incomplete",
                        ),
                        const Divider(),
                        const ToolsTile(
                          isAcheived: true,
                          //  label: "Laptop Chargers",
                          label: "snapshot.data!.tools![0].name",
                        ),
                        const ToolsTile(
                          isAcheived: true,
                          // label: "Any Smart Phone with Internet and Camera",
                          label: "snapshot.data!.tools![1].name",
                        ),
                        const ToolsTile(
                          isAcheived: true,
                          // label: "Notepad",
                          label: "snapshot.data!.tools![2].name",
                        ),
                        const ToolsTile(
                          isAcheived: false,
                          label: "Windows Laptop",
                          //label: snapshot.data!.tools![3].name,
                        ),
                        const ToolsTile(
                          isAcheived: false,
                          label: "Basic Screw Driver Set",
                          //label: snapshot.data!.tools![4].name,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class AdvanceToolsTile extends StatelessWidget {
  const AdvanceToolsTile({
    Key? key,
    required this.label,
    required this.status,
  }) : super(key: key);
  final String label, status;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(6),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  status,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ToolsTile extends StatelessWidget {
  const ToolsTile({
    Key? key,
    required this.isAcheived,
    required this.label,
  }) : super(key: key);

  final bool isAcheived;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          isAcheived
              ? const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              : Icon(
                  Icons.circle,
                  color: Colors.teal.shade100,
                ),
          const SizedBox(width: 12),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
