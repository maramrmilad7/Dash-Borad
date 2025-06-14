import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiveui/models/user_info_model.dart';
import 'package:responsiveui/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(userInfoModel.title,
                  style: AppStyles.styleSemiBold16(context))),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              userInfoModel.subtitle,
              style: AppStyles.styleRegular12(context),
            ),
          )),
    );
  }
}
