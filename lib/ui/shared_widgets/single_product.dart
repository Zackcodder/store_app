import 'package:flutter/material.dart';
import 'package:store_app/ui/common/app_colors.dart';
import 'package:store_app/ui/common/ui_helpers.dart';
import 'package:store_app/ui/common/app_strings.dart';

class ProductContainer extends StatelessWidget {
  String? imageName;
  String? productAmount;
  ProductContainer(
      {super.key, required this.imageName, required this.productAmount,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: kcWhite, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                imageName ?? '',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
              const Positioned(
                top: 10,
                left: 120,
                child: Icon(Icons.favorite_border),
              ),
            ],
          ),
          const Text(ksShirt),
          const Text(ksEssentialMenShort),
          verticalSpaceMedium,
          Row(
            children: [
              const Icon(Icons.star, size: 20, color: Colors.amber),
              const Text(ksRating),
              Text(productAmount ?? ''),
            ],
          )
        ],
      ),
    );
  }
}
