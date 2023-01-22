import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/views/widgets/space_60.dart';
import '/views/widgets/splash_page_start_button.dart';
import '../../const/app_content_style.dart';
import '/const/app_contents.dart';
import '/const/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  //final style = const TextStyle(fontSize: AppTextSizes.MAIN_HEADING_FONT_SIZE);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SpaceWidget(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                AppContents.SPLASHPAGE_QUOTE,
                style: AppTextStyles.mainHeadingStyle,
              ),
            ),
            const SpaceWidget(height: 100),
            Center(
              child: Image.asset(
                AppImages.SPLASHPAGE_IMAGE,
                height: size.height * 0.36,
              ),
            ),
            const SpaceWidget(height: 100),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  StartButtonWidget(),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
