import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/DashBoardMobileLayout.dart';
import 'package:responsiveui/widgets/adaptive_layout_widget.dart';
import 'package:responsiveui/widgets/dash_board_desktoplayout.dart';
import 'package:responsiveui/widgets/dash_board_tabletlayout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletlayout(),
        desktopLayout: (context) =>const DashBoardDesktopLayout(),
      ),
    );
  }
}
