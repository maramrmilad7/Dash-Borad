import 'package:flutter/material.dart';
import 'package:responsiveui/utils/app_styles.dart';
import 'package:responsiveui/widgets/dots_indicator.dart';
import 'package:responsiveui/widgets/my_card_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        SizedBox(
            width: 420,
            child: Text(
              'My card',
              style: AppStyles.styleSemiBold20,
            )),
        SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController:pageController ,
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentpageIndex: currentPageIndex,
        )
      ],
    );
  }
}
