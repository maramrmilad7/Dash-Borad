import 'package:flutter/material.dart';
import 'package:responsiveui/models/all_expenses_item_model.dart';
import 'package:responsiveui/utils/app_images.dart';
import 'package:responsiveui/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});
  static const List<AllExpensesItemModel> itemModel = [
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      price: r'$120.00',
      date: 'April 2025',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expense',
      price: r'$80.00',
      date: 'April 2025',
    ),
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      price: r'$40.00',
      date: 'April 2025',
    ),
  ];

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

int SelectedIndex = 0;

class _AllExpensesListViewState extends State<AllExpensesListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
        //  children: itemModel.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
        children: AllExpensesListView.itemModel.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                SelectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(
                  isSelected: SelectedIndex == index, itemModel: item),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                SelectedIndex = index;
              });
            },
            child: AllExpensesItem(
                isSelected: SelectedIndex == index, itemModel: item),
          ),
        );
      }
    }).toList());
  }
}
