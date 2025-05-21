import 'package:flutter/material.dart';
import 'package:responsiveui/models/drawer_item_model.dart';
import 'package:responsiveui/utils/app_images.dart';
import 'package:responsiveui/widgets/drawer_item.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
            ),
          );
        });
  }
}
