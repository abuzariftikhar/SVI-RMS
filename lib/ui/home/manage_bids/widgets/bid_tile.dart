import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/material.dart';
import 'package:sv_rms_mobile/ui/bid_details/bid_details_screen.dart';

class BidTile extends StatelessWidget {
  const BidTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 4.0,
      ),
      child: Material(
        clipBehavior: Clip.hardEdge,
        shape: SquircleBorder(radius: BorderRadius.circular(24.0)),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, BidDetailsScreen.route);
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: const Text(
                        "NIC Card Replacement 13 Oct France",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueGrey,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                        child: Text(
                          "Break-Fix",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Bid Date: 2021-09-14T09:00",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 12,
                  color: Colors.grey,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.my_location_outlined,
                      size: 14,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Location: Épagny-Metz-Tessy, France",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.merge_type_rounded,
                      size: 14,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Type: Hourly - Without Travel",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.payment_rounded,
                      size: 14,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Call Out Rate: \$30",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 18,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
