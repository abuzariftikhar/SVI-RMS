import 'package:flutter/material.dart';

class MyAttachmentsScreen extends StatefulWidget {
  const MyAttachmentsScreen({Key? key}) : super(key: key);
  static const String route = "attachmentsScreen";
  @override
  _MyAttachmentsScreenState createState() => _MyAttachmentsScreenState();
}

class _MyAttachmentsScreenState extends State<MyAttachmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverAppBar(
                pinned: true,
                centerTitle: true,
                title: Text(
                  "My Attachments",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Educational Attachments",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const AttachmentTile(
                        // label: "Enginering Degree",
                        label: "snapshot.data?.educations![0].name",
                        location: "snapshot.data!.educations![0].location",
                        fileName: "snapshot.data?.educations![0].educationFile",
                        // location: "Karachi, Pakistan",
                        // fileName: "degree_university.pdf",
                      )
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Certificate Attachments",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const AttachmentTile(
                        label: "snapshot.data!.certificates![0].name",
                        fileName:
                            "snapshot.data!.certificates![0].certificateFile",
                        // label: "PMP Certification",
                        // fileName: "pmp_certificate.pdf",
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Vendor Attachments",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const AttachmentTile(
                        label: "snapshot.data?.vendorAttachments![0].name",
                        fileName:
                            "snapshot.data?.vendorAttachments![0].attachmentFile",
                        // label: "NDA File",
                        // fileName: "nda_mutal.pdf",
                      ),
                      const AttachmentTile(
                        // label: "CV File",
                        // fileName: "nda_mutal.pdf",
                        label: "snapshot.data?.vendorAttachments![1].name",
                        fileName:
                            "snapshot.data?.vendorAttachments![1].attachmentFile",
                      ),
                      const AttachmentTile(
                        // label: "PP Agreement File",
                        // fileName: "nda_mutal.pdf",
                        label: "snapshot.data?.vendorAttachments![2].name",
                        fileName:
                            "snapshot.data?.vendorAttachments![2].attachmentFile",
                      ),
                      const AttachmentTile(
                        // label: "PP Agreement File",
                        // fileName: "nda_mutal.pdf",
                        label: "snapshot.data?.vendorAttachments![3].name",
                        fileName:
                            "snapshot.data?.vendorAttachments![3].attachmentFile",
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
      }),
    );
  }
}

class AttachmentTile extends StatelessWidget {
  const AttachmentTile({
    Key? key,
    required this.label,
    this.location,
    required this.fileName,
  }) : super(key: key);
  final String? label, location, fileName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(12.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.attachment_rounded,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 120,
                    child: Text(
                      "Name:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    label ?? "",
                    style: const TextStyle(),
                  ),
                ],
              ),
              location == null
                  ? Container()
                  : Row(
                      children: [
                        const SizedBox(
                          width: 120,
                          child: Text(
                            "Location:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          location ?? "",
                          style: const TextStyle(),
                        ),
                      ],
                    ),
              Row(
                children: [
                  const SizedBox(
                    width: 120,
                    child: Text(
                      "File Name:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      fileName ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
