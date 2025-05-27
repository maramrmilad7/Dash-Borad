import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageBackground,
      this.iconColor,
      this.imageColor});
  final String image;
  final Color? imageBackground, iconColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              color: imageBackground ?? Color(0xFFFAFAFA), shape: OvalBorder()),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: iconColor ?? Color(0xFF064061),
          ),
        )
      ],
    );
  }
}
