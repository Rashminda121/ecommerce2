import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/products/product_cards/pch.dart';
import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen3 extends StatelessWidget {
  const SubCategoriesScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Clothes'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TRoundedImage(
                    width: double.infinity,
                    imageUrl: TImages.promobanner3,
                    applyImageRadius: true),
                const SizedBox(height: TSizes.spaceBtwSections),
                Column(
                  children: [
                    ///heading

                    TSectionHeading(
                      title: 'Clothes & Items',
                      onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),

                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems),
                          itemBuilder: (context, index) {
                          if (index == 0) {
                            return const TProductCardHorizontal2(
                              image: TImages.tshirt,
                              brand: 'Clothes',
                              price: '25',
                              description: 'Brand new Shirt',
                              percent: '15',
                            );
                          } else if (index == 1) {
                            return const TProductCardHorizontal2(
                              image: TImages.denim,
                              brand: 'Clothes',
                              price: '30',
                              description: 'Brand new Denims',
                              percent: '10',
                            );
                          } else if (index == 2) {
                            return const TProductCardHorizontal2(
                              image: TImages.socks,
                              brand: 'Clothes',
                              price: '10',
                              description: 'Brand new Socks',
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
            )),
      ),
    );
  }
}
