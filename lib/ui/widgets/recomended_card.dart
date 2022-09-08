import 'package:flutter/material.dart';
import 'package:story_shop/shared/theme.dart';

class RecomendedCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String star;
  final String price;

  const RecomendedCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.star,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 260,
      padding: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: darkGreyColor2,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Image.asset(
            imageUrl,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: whiteTextStyle1.copyWith(
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/ic_star_active.png',
                      width: 16,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/ic_star_active.png',
                      width: 16,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/ic_star_active.png',
                      width: 16,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/ic_star_active.png',
                      width: 16,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/ic_star_deactive.png',
                      width: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      star,
                      style: darkGreyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  price,
                  style: whiteTextStyle1.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
