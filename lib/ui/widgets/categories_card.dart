import 'package:flutter/material.dart';
import 'package:story_shop/shared/theme.dart';

class CategoriesCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  const CategoriesCard({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 22,
          ),
          child: Container(
            width: 64,
            height: 64,
            margin: const EdgeInsets.only(bottom: 7),
            decoration: BoxDecoration(
              color: darkGreyColor2,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          text,
          style: whiteTextStyle1.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
