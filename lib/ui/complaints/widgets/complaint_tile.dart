import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sv_rms_mobile/utils/app_theme.dart';

class ComplaintTile extends StatelessWidget {
  const ComplaintTile({
    Key? key,
    required this.label,
    required this.description,
    required this.status,
    required this.comment,
  }) : super(key: key);
  final String label, description, status, comment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        label,
                        style: TextStyle(
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        child: Text(
                          status,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Description : $description",
                  style: const TextStyle(),
                ),
                const Text(
                  "Filed on: 2021-11-29 20:25:33",
                  style:  TextStyle(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
