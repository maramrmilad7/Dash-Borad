import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
          Text(
          'See All',
          style: AppStyles.styleMedium16(context).copyWith(
            color: Color(0xFF4EB7F2),
          ),
        ),
      ]);
  }
}