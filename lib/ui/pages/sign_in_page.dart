import 'package:flutter/material.dart';
import 'package:story_shop/shared/theme.dart';
import 'package:story_shop/ui/pages/home_page.dart';
import 'package:story_shop/ui/pages/sign_up_page.dart';
import 'package:story_shop/ui/widgets/custom_text_form_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.only(bottom: 22),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_logo.png',
                  ),
                ),
              ),
            ),
            Text(
              'Let\'s Sign You In.',
              style: whiteTextStyle1.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget inputSection() {
      return Column(
        children: const [
          CustomTextFormField(
            hintText: 'Email',
            margin: EdgeInsets.only(bottom: 16),
          ),
          CustomTextFormField(
            hintText: 'Password',
            obscureText: true,
          ),
        ],
      );
    }

    Widget rememberCheckbox() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isRememberMe = !isRememberMe;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: purpleColor,
                  ),
                ),
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: isRememberMe ? purpleColor : Colors.transparent,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Remember Me',
              style: whiteTextStyle1.copyWith(fontSize: 12),
            ),
            const Spacer(),
            Text(
              'Forgot Password?',
              style: whiteTextStyle1.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSection() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 47,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: purpleColor,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: whiteTextStyle1.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have account? ',
                  style: whiteTextStyle1.copyWith(fontSize: 12),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Register',
                    style: purpleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            header(),
            inputSection(),
            rememberCheckbox(),
            buttonSection(),
          ],
        ),
      ),
    );
  }
}
