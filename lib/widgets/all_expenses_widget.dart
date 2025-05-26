import 'package:flutter/material.dart';
import 'package:responsiveui/models/all_expenses_item_model.dart';
import 'package:responsiveui/utils/app_images.dart';
import 'package:responsiveui/widgets/all_expenses_header.dart';
import 'package:responsiveui/widgets/all_expenses_item.dart';
import 'package:responsiveui/widgets/all_expenses_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(height: 16),
          AllExpensesListView()
        ],
      ),
    );
  }
}
