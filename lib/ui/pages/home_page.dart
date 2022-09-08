import 'package:flutter/material.dart';
import 'package:story_shop/shared/theme.dart';
import 'package:story_shop/ui/widgets/categories_card.dart';
import 'package:story_shop/ui/widgets/custom_carousel.dart';
import 'package:story_shop/ui/widgets/custom_text_form_field.dart';
import 'package:story_shop/ui/widgets/recomended_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 60,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 42,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: darkGreyColor2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const CustomTextFormField(
                  hintText: 'I\'m searching for...',
                ),
              ),
            ),
            Container(
              height: 42,
              width: 42,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: darkGreyColor2,
                borderRadius: BorderRadius.circular(14),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/ic_cart.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget carousel() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomCarousel(
              title: 'New Arrival\nItem Up to 30%',
              imageUrl: 'assets/img_carousel1.png',
              color: purpleColor,
            ),
            CustomCarousel(
              title: 'Flash Deal\n12.12 Grab Now',
              imageUrl: 'assets/img_carousel2.png',
              color: greenColor,
            ),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: const EdgeInsets.only(top: 22),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Categories',
                  style: whiteTextStyle1.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  'See All',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CategoriesCard(
                  imageUrl: 'assets/ic_stationary.png',
                  text: 'Stationary',
                ),
                CategoriesCard(
                  imageUrl: 'assets/ic_electronic.png',
                  text: 'Electronic',
                ),
                CategoriesCard(
                  imageUrl: 'assets/ic_houseware.png',
                  text: 'Houseware',
                ),
                CategoriesCard(
                  imageUrl: 'assets/ic_collection.png',
                  text: 'Collection',
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget recomended() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Something You Like',
              style: whiteTextStyle1.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    RecomendedCard(
                      imageUrl: 'assets/img_nike.png',
                      title: 'Nike Air Force X..',
                      star: '(16)',
                      price: 'Rp 1.650.000',
                    ),
                    RecomendedCard(
                      imageUrl: 'assets/img_smartwatch.png',
                      title: 'Smartwatch 2.0',
                      star: '(16)',
                      price: 'Rp 4.500.000',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    RecomendedCard(
                      imageUrl: 'assets/img_philips.png',
                      title: 'Philips LED Wi-Fi..',
                      star: '(16)',
                      price: 'Rp 85.000',
                    ),
                    RecomendedCard(
                      imageUrl: 'assets/img_garnier.png',
                      title: 'Garnier Pure Act..',
                      star: '(46)',
                      price: 'Rp 27.839',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    RecomendedCard(
                      imageUrl: 'assets/img_headphone.png',
                      title: 'Rexus Headphon..',
                      star: '(16)',
                      price: 'Rp 743.200',
                    ),
                    RecomendedCard(
                      imageUrl: 'assets/img_airpods.png',
                      title: 'Airpods',
                      star: '(16)',
                      price: 'Rp 5.500.000',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'You\'ve reached the end',
                  style: darkGreyTextStyle,
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            carousel(),
            categories(),
            recomended(),
          ],
        ),
      ),
    );
  }
}
