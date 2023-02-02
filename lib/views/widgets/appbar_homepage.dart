import 'package:flutter/material.dart';

import '../../const/app_content_style.dart';
import '../../const/app_images.dart';

class AppbarHomePage extends StatelessWidget {
  const AppbarHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 32.0,
        child: Image.asset(
          AppImages.PROFILE_PICTURE,
          fit: BoxFit.cover,
        ),
      ),
      title: Text('Hi, Sreerag', style: AppTextStyles.mainHeadingStyle),
      subtitle: Text(
        'Welcome back',
        style: AppTextStyles.contentFontSize,
      ),
      // trailing: IconButton(
      //     onPressed: () {}, icon: const Icon(Icons.settings))
    );
  }
}
