import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/products/product_cards/pch.dart';
import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen5 extends StatelessWidget {
  const SubCategoriesScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Shoes & Items'), showBackArrow: true),
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
                      title: 'Shoes & Items',
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
                              image: TImages.nikeshoe1,
                              brand: 'Shoes',
                              price: '150',
                              description: 'Brand new Nike Shoe ',
                              percent: '15',
                            );
                          } else if (index == 1) {
                            return const TProductCardHorizontal2(
                              image: TImages.nikeshoe2,
                              brand: 'Shoes',
                              price: '190',
                              description: 'Brand new Nike Shoe',
                              percent: '10',
                            );
                          } else if (index == 2) {
                            return const TProductCardHorizontal2(
                              image: TImages.pumashoe,
                              brand: 'Shoes',
                              price: '200',
                              description: 'Brand new Puma Shoe',
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
