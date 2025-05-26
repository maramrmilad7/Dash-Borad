import 'package:flutter/material.dart';
import 'package:responsiveui/models/all_expenses_item_model.dart';
import 'package:responsiveui/utils/app_styles.dart';
import 'package:responsiveui/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageColor: Colors.white,
            //   iconColor: Colors.white,
            imageBackground: Colors.white.withOpacity(0.100000000149011612),
            image: itemModel.image,
          ),
          SizedBox(height: 34),
          Text(itemModel.title,
              style: AppStyles.styleMedium16.copyWith(color: Colors.white)),
          SizedBox(height: 8),
          Text(itemModel.date,
              style:
                  AppStyles.styleRegular14.copyWith(color: Color(0xFFFAFAFA))),
          SizedBox(height: 16),
          Text(itemModel.price,
              style: AppStyles.styleSemiBold24.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
