import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sv_rms_mobile/ui/home/home_store.dart';
import 'package:sv_rms_mobile/ui/profile_details/about_me/about_me_screen.dart';
import 'package:sv_rms_mobile/ui/profile_details/my_attachments/my_attachments_screen.dart';
import 'package:sv_rms_mobile/ui/profile_details/my_payments/my_payments_screen.dart';
import 'package:sv_rms_mobile/ui/profile_details/my_tools/my_tools_screen.dart';
import 'package:sv_rms_mobile/ui/profile_details/others/others_screen.dart';
import 'package:sv_rms_mobile/utils/app_theme.dart';

class ProfileScreen extends StatefulWidget {
  final HomeScreenStore homeScreenStore;
  const ProfileScreen({
    Key? key,
    required this.homeScreenStore,
  }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _smsNotificationOn = true;
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 28),
                      padding: const EdgeInsets.all(8.0),
                      height: MediaQuery.of(context).size.width / 2.8,
                      width: MediaQuery.of(context).size.width / 2.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Theme.of(context).cardColor,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.width / 3,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          color: Colors.blueGrey,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/profile1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  "Ahmed Hamid",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Theme.of(context).cardColor,
                      ),
                      child: const Text(
                        "Recruiter Consultant",
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Material(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Luanda, Angola",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Rating",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "4 out of 5",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Employee Status",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Freelancer",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Availability",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "24/7",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Text Number",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "+92 4564 5445 24",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Registration Date",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "2020-05-10",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Material(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Working experience",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "1 Year, 02 Months",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 36,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Languages",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "English Level 1",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Interested In",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Full Time Role",
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Material(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: const Text(
                                  "Skill Name",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Text(
                                  "Level",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: const Text(
                                  "Desk Side Support",
                                  style: TextStyle(),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Text(
                                  "L2",
                                  style: TextStyle(),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: const Text(
                                  "Mobile App Testing",
                                  style: TextStyle(),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Text(
                                  "L3",
                                  style: TextStyle(),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: const Text(
                                  "Python and Debug",
                                  style: TextStyle(),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: const Text(
                                  "L2",
                                  style: TextStyle(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Material(
                    color: Theme.of(context).cardColor,
                    clipBehavior: Clip.hardEdge,
                    shape: SquircleBorder(radius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        ProfileTile(
                          title: "About",
                          onTap: () {
                            Navigator.pushNamed(context, AboutMeScreen.route);
                          },
                          icon: Icons.person_pin,
                        ),
                        const Divider(height: 1),
                        ProfileTile(
                          title: "Attachments",
                          onTap: () {
                            Navigator.pushNamed(
                                context, MyAttachmentsScreen.route);
                          },
                          icon: Icons.attachment_rounded,
                        ),
                        const Divider(height: 1),
                        ProfileTile(
                          title: "Tools",
                          onTap: () {
                            Navigator.pushNamed(context, MyToolsScreen.route);
                          },
                          icon: Icons.radar,
                        ),
                        const Divider(height: 1),
                        ProfileTile(
                          title: "Payments",
                          onTap: () {
                            Navigator.pushNamed(
                                context, MyPaymentsScreen.route);
                          },
                          icon: Icons.payment,
                        ),
                        const Divider(height: 1),
                        ProfileTile(
                          title: "Others",
                          onTap: () {
                            Navigator.pushNamed(context, OthersScreen.route);
                          },
                          icon: Icons.devices_other,
                        ),
                        const Divider(height: 1),
                        ProfileTile(
                          title: "Sms Notifications",
                          onTap: () {},
                          icon: Icons.sms,
                          trailing: CupertinoSwitch(
                            value: _smsNotificationOn,
                            onChanged: (change) {
                              setState(() {
                                _smsNotificationOn = change;
                              });
                            },
                          ),
                        ),
                        const Divider(height: 1),
                        ProfileTile(
                          title: "Change Password",
                          onTap: () {},
                          icon: Icons.lock,
                        ),
                        const Divider(height: 1),
                        ProfileTile(
                          title: "Logout",
                          onTap: () {},
                          icon: Icons.logout,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      );
    });
  }
}

class ProfileTile extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  final IconData icon;
  final bool isLast;
  final Widget trailing;
  const ProfileTile({
    Key? key,
    required this.title,
    required this.onTap,
    required this.icon,
    this.trailing = const Icon(
      Icons.arrow_forward_ios_rounded,
      size: 18.0,
    ),
    this.isLast = false,
  }) : super(key: key);

  @override
  _ProfileTileState createState() => _ProfileTileState();
}

class _ProfileTileState extends State<ProfileTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.primaryColor,
                  foregroundColor: Colors.white,
                  radius: 15,
                  child: Icon(widget.icon, size: 16.0),
                ),
                const SizedBox(width: 12),
                Text(
                  widget.title,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            widget.trailing,
          ],
        ),
      ),
    );
  }
}

class CustomTabBarItem extends StatelessWidget {
  final HomeScreenStore store;
  final String title;
  final int index;
  const CustomTabBarItem({
    Key? key,
    required this.title,
    required this.index,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return InkWell(
        onTap: () {
          store.profileTabIndex = index;
        },
        child: SizedBox(
          height: 40,
          width: (MediaQuery.of(context).size.width / 3) - (40 / 3),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCirc,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: store.profileTabIndex == index ? 16 : 14,
              color: store.profileTabIndex == index
                  ? AppTheme.primaryColor
                  : Colors.grey,
            ),
            child: Center(
              child: Text(
                title,
              ),
            ),
          ),
        ),
      );
    });
  }
}
