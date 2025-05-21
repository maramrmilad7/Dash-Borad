import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_images.dart';
import 'package:responsiveui/widgets/CustomDrawerListView.dart';
import 'package:responsiveui/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
            const SizedBox(height: 8),
            CustomDrawerListView(),
          ],
        ));
  }
}
