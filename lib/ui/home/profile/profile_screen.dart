import 'package:animations/animations.dart';
import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sv_rms_mobile/app/config_store.dart';
import 'package:sv_rms_mobile/ui/home/home_store.dart';
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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
                  child: Material(
                    color: Theme.of(context).cardColor,
                    clipBehavior: Clip.hardEdge,
                    shape: SquircleBorder(radius: BorderRadius.circular(18)),
                    child: Row(
                      children: [
                        CustomTabBarItem(
                          title: "Persoal",
                          index: 0,
                          store: widget.homeScreenStore,
                        ),
                        CustomTabBarItem(
                          title: "Attachments",
                          index: 1,
                          store: widget.homeScreenStore,
                        ),
                        CustomTabBarItem(
                          title: "Settings",
                          index: 2,
                          store: widget.homeScreenStore,
                        ),
                      ],
                    ),
                  ),
                ),
                PageTransitionSwitcher(
                  reverse: false,
                  transitionBuilder: (Widget child1,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return SharedAxisTransition(
                      fillColor: Colors.transparent,
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      transitionType: SharedAxisTransitionType.vertical,
                      child: child1,
                    );
                  },
                  child: getProfileView(widget.homeScreenStore.profileTabIndex),
                ),
                // AnimatedSwitcher(
                //   duration: const Duration(milliseconds: 200),
                //   reverseDuration: const Duration(milliseconds: 1),
                //   transitionBuilder: (child, animation) {
                //     return FadeTransition(
                //       opacity: animation,
                //       child: child,
                //     );
                //   },
                //   child: getProfileView(widget.homeScreenStore.profileTabIndex),
                // )
              ],
            ),
          ),
        ],
      );
    });
  }

  Widget getProfileView(int index) {
    Widget _widget = Container();
    if (index == 0) {
      _widget = const CommonSection();
    } else if (index == 1) {
      _widget = const AttachmentsSection();
    } else if (index == 2) {
      _widget = const SettingsSection();
    }
    return _widget;
  }
}

class CommonSection extends StatefulWidget {
  const CommonSection({Key? key}) : super(key: key);

  @override
  _CommonSectionState createState() => _CommonSectionState();
}

class _CommonSectionState extends State<CommonSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: Theme.of(context).cardColor,
        clipBehavior: Clip.hardEdge,
        shape: SquircleBorder(radius: BorderRadius.circular(18)),
        child: Column(
          children: [
            ProfileTile(
              title: "Edit Profile",
              onTap: () {},
              icon: Icons.person_pin,
            ),
            const Divider(height: 1),
            ProfileTile(
              title: "My Address",
              onTap: () {},
              icon: Icons.location_pin,
            ),
            const Divider(height: 1),
            ProfileTile(
              title: "Saved Services",
              onTap: () {},
              icon: Icons.bookmark,
            ),
            const Divider(height: 1),
            ProfileTile(
              title: "Notification",
              onTap: () {},
              icon: Icons.notifications_active_rounded,
              trailing: CupertinoSwitch(
                value: true,
                onChanged: (newVal) {},
              ),
            ),
            const Divider(height: 1),
            ProfileTile(
              title: "Invite Friends",
              onTap: () {},
              icon: Icons.share_rounded,
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
    );
  }
}

class AttachmentsSection extends StatefulWidget {
  const AttachmentsSection({Key? key}) : super(key: key);

  @override
  _AttachmentsSectionState createState() => _AttachmentsSectionState();
}

class _AttachmentsSectionState extends State<AttachmentsSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            // height: 200,
            width: MediaQuery.of(context).size.width - 32.0,
            child: Material(
              color: Theme.of(context).cardColor,
              shape: SquircleBorder(radius: BorderRadius.circular(24.0)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: Image.asset(
                            "assets/images/profile1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "AC Service",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: const Text(
                                "Air Conditioner Service",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "No. of AC: 4",
                      style: TextStyle(),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "No. of Technician: 2",
                      style: TextStyle(),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Book on: June 12, 2021  -  11:30 AM",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SettingsSection extends StatefulWidget {
  const SettingsSection({Key? key}) : super(key: key);

  @override
  _SettingsSectionState createState() => _SettingsSectionState();
}

class _SettingsSectionState extends State<SettingsSection> {
  late final ConfigStore _configStore;
  late bool darkMode;
  @override
  void initState() {
    super.initState();

    _configStore = Provider.of<ConfigStore>(context, listen: false);
    darkMode = _configStore.isDarkMode ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: Theme.of(context).cardColor,
        clipBehavior: Clip.hardEdge,
        shape: SquircleBorder(radius: BorderRadius.circular(18)),
        child: Column(
          children: [
            ProfileTile(
              title: "Language",
              onTap: () {},
              icon: Icons.language_outlined,
              trailing: Row(
                children: const [
                  Text(
                    "English",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 18,
                  )
                ],
              ),
            ),
            const Divider(height: 1),
            ProfileTile(
              title: "Dark mode",
              onTap: () {},
              icon: Icons.nightlight_round,
              trailing: CupertinoSwitch(
                value: darkMode,
                onChanged: (change) {
                  setState(() {
                    darkMode = change;
                  });
                  _configStore.setThemeMode(change);
                },
              ),
            ),
            const Divider(height: 1),
            ProfileTile(
              title: "Rate App",
              onTap: () {},
              icon: Icons.rate_review,
            ),
            const Divider(height: 1),
            ProfileTile(
              title: "Help Center",
              onTap: () {},
              icon: Icons.help,
            ),
            const Divider(height: 1),
            ProfileTile(
              title: "Privacy Policy",
              onTap: () {},
              icon: Icons.privacy_tip_rounded,
            ),
            const Divider(height: 1),
            ProfileTile(
              title: "Contact Us",
              onTap: () {},
              icon: Icons.contact_phone_rounded,
            ),
          ],
        ),
      ),
    );
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
