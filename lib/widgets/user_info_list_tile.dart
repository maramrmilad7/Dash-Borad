import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiveui/utils/app_images.dart';
import 'package:responsiveui/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.image, required this.title, required this.subtitle, });
  final String image , title ,subtitle ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:SvgPicture.asset(image) ,
      title:  Text(
        title,
        style: AppStyles.styleBold16
      ),
      subtitle: Text(subtitle,
      style: AppStyles.styleRegular12,),
    );
  }
}