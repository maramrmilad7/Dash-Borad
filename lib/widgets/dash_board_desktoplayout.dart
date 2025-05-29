import 'package:flutter/material.dart';
import 'package:responsiveui/widgets/AllExpensesAndQuickInvoiceSection.dart';
import 'package:responsiveui/widgets/Quick_invoice_item.dart';
import 'package:responsiveui/widgets/all_expenses_widget.dart';
import 'package:responsiveui/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
      ],
    );
  }
}
