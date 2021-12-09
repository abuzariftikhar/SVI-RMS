import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FileComplaintScreen extends StatefulWidget {
  const FileComplaintScreen({Key? key}) : super(key: key);
  static const String route = "fileComplaint";
  @override
  _FileComplaintScreenState createState() => _FileComplaintScreenState();
}

class _FileComplaintScreenState extends State<FileComplaintScreen> {
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
                title: Text(
                  "File Complaint",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                actions: [],
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const Text(
                        "File A New Complaint",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        decoration: InputDecoration(
                          label: Text("Title"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        maxLines: null,
                        minLines: null,
                        decoration: InputDecoration(
                          label: Text("Description"),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          children: [
                            const Text(
                              "You can attach photo with your complaints to get quick response and resolution.",
                              style: TextStyle(
                              ),
                            ),
                            ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_a_photo_outlined,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  "Add Photo",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 80,
                ),
              )
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
                        "Submit",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
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
