import 'package:flutter/material.dart';
import 'package:story_shop/shared/theme.dart';

class CustomCarousel extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Color color;

  const CustomCarousel({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 279,
      height: 148,
      margin: const EdgeInsets.only(
        top: 24,
        left: 16,
      ),
      padding: const EdgeInsets.only(
        left: 24,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: whiteTextStyle1.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
              Container(
                width: 90,
                height: 29,
                margin: const EdgeInsets.only(top: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: whiteColor1,
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Grab it now',
                    style: whiteTextStyle1.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            imageUrl,
            height: 121,
          ),
        ],
      ),
    );
  }
}
