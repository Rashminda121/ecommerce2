import 'package:ecommerce_app/common/widgets/products/product_cards/pch.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen2 extends StatelessWidget {
  const SubCategoriesScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Grocery'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.promobanner2,
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Column(
                children: [
                  ///heading
                  TSectionHeading(
                    title: 'Grocery Items',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                      const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return const TProductCardHorizontal2(
                            image: TImages.pumpkin,
                            brand: 'Grocery',
                            price: '25',
                            description: 'Fresh Pumpkin',
                            percent: '15',
                          );
                        } else if (index == 1) {
                          return const TProductCardHorizontal2(
                            image: TImages.apple,
                            brand: 'Grocery',
                            price: '5',
                            description: 'Fresh Apples',
                            percent: '10',
                          );
                        } else if (index == 2) {
                          return const TProductCardHorizontal2(
                            image: TImages.garlic,
                            brand: 'Grocery',
                            price: '3',
                            description: 'Fresh Garlics',
                            percent: '20',
                          );
                        }
                        // Return a default widget if none of the conditions are met
                        return const SizedBox();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
