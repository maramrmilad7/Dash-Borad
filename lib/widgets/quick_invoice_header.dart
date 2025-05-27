import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
          //  style: Theme.of(context).textTheme.headlineSmall,
        ),
        Spacer(),
        Icon(
          Icons.add,
          color: Color(0xff4EB7F2),
        )
      ],
    );
  }
}