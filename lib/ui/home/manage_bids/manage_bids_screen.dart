import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sv_rms_mobile/utils/app_theme.dart';

import 'manage_bids_store.dart';
import 'widgets/bid_tile.dart';

class BidsScreen extends StatefulWidget {
  const BidsScreen({
    Key? key,
    required this.store,
  }) : super(key: key);

  final BidsScreenStore store;
  @override
  _BidsScreenState createState() => _BidsScreenState();
}

class _BidsScreenState extends State<BidsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).cardColor,
          elevation: 5,
          pinned: true,
          toolbarHeight: 0,
          bottom: PreferredSize(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BidsTabWidget(
                    index: 0,
                    label: "Your Bids",
                    store: widget.store,
                  ),
                  BidsTabWidget(
                    index: 1,
                    label: "Technicians Bids",
                    store: widget.store,
                  ),
                  BidsTabWidget(
                    index: 2,
                    label: "Accepted Bids",
                    store: widget.store,
                  ),
                ],
              ),
            ),
            preferredSize: const Size(
              double.infinity,
              56,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const BidTile(),
            ),
          ),
        ),
      ],
    );
  }
}

class BidsTabWidget extends StatelessWidget {
  const BidsTabWidget({
    Key? key,
    required this.index,
    required this.label,
    required this.store,
  }) : super(key: key);
  final int index;
  final String label;
  final BidsScreenStore store;
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return GestureDetector(
        onTap: () {
          store.tabIndex = index;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.ease,
          decoration: BoxDecoration(
            color: index == store.tabIndex
                ? AppTheme.primaryColor
                : Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(30),
          ),
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 100),
            style: TextStyle(
              color: index == store.tabIndex ? Colors.white : Colors.grey,
              fontWeight:
                  index == store.tabIndex ? FontWeight.bold : FontWeight.normal,
            ),
            child: Text(
              label,
            ),
          ),
        ),
      );
    });
  }
}
