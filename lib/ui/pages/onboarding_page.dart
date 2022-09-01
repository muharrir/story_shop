import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:story_shop/shared/theme.dart';
import 'package:story_shop/ui/pages/sign_up_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: GestureDetector(
                onTap: () {
                  carouselController.animateToPage(2);
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'SKIP',
                    style: whiteTextStyle1.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding.png',
                  height: 380,
                ),
                Image.asset(
                  'assets/img_onboarding.png',
                  height: 380,
                ),
                Image.asset(
                  'assets/img_onboarding.png',
                  height: 380,
                ),
              ],
              options: CarouselOptions(
                height: 380,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: carouselController,
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 50,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'No Competitor',
                    style: whiteTextStyle1.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Make more money and get your customer fast matter',
                    style: whiteTextStyle1.copyWith(
                      fontSize: 26,
                      fontWeight: bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    height: 24,
                    child: Row(
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == 0
                                ? purpleColor
                                : darkGreyColor1,
                          ),
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == 1
                                ? purpleColor
                                : darkGreyColor1,
                          ),
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == 2
                                ? purpleColor
                                : darkGreyColor1,
                          ),
                        ),
                        const Spacer(),
                        currentIndex == 2
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignUpPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Let\'s Start!',
                                  style: purpleTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
