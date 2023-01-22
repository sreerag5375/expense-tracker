import 'package:expense_tracker/const/app_contents.dart';
import 'package:flutter/material.dart';

import '../../const/app_content_style.dart';
import '/const/app_images.dart';
import '/views/widgets/login_text_form_fields.dart';
import '/views/widgets/space_60.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AppImages.LOGIN_PAGE_IMAGE,
                height: size.height * 0.3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back,',
                    style: AppTextStyles.mainHeadingStyle,
                  ),
                  const SpaceWidget(height: 6.0),
                  Text(
                    'Please Login with your personal Login credintials',
                    style: AppTextStyles.subHeadingStyle,
                  )
                ],
              ),
            ),
            const SpaceWidget(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                  child: Column(
                children: [
                  LoginTextFormFieldWidget(
                    controller: nameController,
                    labelText: 'UserName',
                    prefixIcon: Icons.person,
                    inputType: TextInputType.text,
                  ),
                  const SpaceWidget(height: 18),
                  LoginTextFormFieldWidget(
                    controller: passwordController,
                    labelText: 'Password',
                    prefixIcon: Icons.lock,
                    inputType: TextInputType.number,
                  ),
                  const SpaceWidget(height: 40),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          final name = nameController.text;
                          final password = passwordController.text;
                          if (name == LoginCredintials.userName &&
                              password == LoginCredintials.password) {
                            Navigator.pushReplacementNamed(context, '/home');
                          } else {
                            final snackBar = SnackBar(
                              margin: const EdgeInsets.all(10.0),
                              content:
                                  const Text(AppContents.SNACKBARERROEMESSAGE),
                              action: SnackBarAction(
                                label: 'Try again',
                                onPressed: () {},
                              ),
                              behavior: SnackBarBehavior.floating,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        },
                        child: Text(
                          'Login',
                          style: AppTextStyles.subHeadingStyle,
                        )),
                  ),
                  const SpaceWidget(height: 20),
                  TextButton(
                      onPressed: () {
                        const snackBar = SnackBar(
                          margin: EdgeInsets.all(10.0),
                          content: Text(AppContents.FORGETPASSWORDMESSAGE),
                          behavior: SnackBarBehavior.floating,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text(
                        'Forget your password?',
                        style: AppTextStyles.contentFontSize,
                      ))
                ],
              )),
            )
          ],
        ),
      )),
    );
  }
}
