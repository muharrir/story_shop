import 'package:flutter/material.dart';
import 'package:story_shop/shared/theme.dart';
import 'package:story_shop/ui/pages/sign_in_page.dart';
import 'package:story_shop/ui/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
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
            'Register',
            style: whiteTextStyle1.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      );
    }

    Widget inputSection() {
      return Column(
        children: const [
          CustomTextFormField(
            hintText: 'Name',
            margin: EdgeInsets.only(bottom: 16),
          ),
          CustomTextFormField(
            hintText: 'Email',
            margin: EdgeInsets.only(bottom: 16),
          ),
          CustomTextFormField(
            hintText: 'Password',
            margin: EdgeInsets.only(bottom: 16),
            obscureText: true,
          ),
          CustomTextFormField(
            hintText: 'Re-Type Password',
            obscureText: true,
          ),
        ],
      );
    }

    Widget buttonSection() {
      return Container(
        margin: const EdgeInsets.only(top: 28),
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
                onPressed: () {},
                child: Text(
                  'Register',
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
                  'Already have account? ',
                  style: whiteTextStyle1.copyWith(fontSize: 12),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Login',
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              header(),
              inputSection(),
              buttonSection(),
            ],
          ),
        ),
      ),
    );
  }
}
