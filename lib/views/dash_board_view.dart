import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/adaptive_layout_widget.dart';
import 'package:responsiveui/widgets/dash_board_desktoplayout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const Center(child: Text('Mobile Layout')),
        tabletLayout: (context) => const Center(child: Text('Tablet Layout')),
        desktopLayout: (context) => DashBoardDesktopLayout(),
      ),
    );
  }
}