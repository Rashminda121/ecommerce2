import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/products/product_cards/pch.dart';
import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen4 extends StatelessWidget {
  const SubCategoriesScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Bags & Items'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TRoundedImage(
                    width: double.infinity,
                    imageUrl: TImages.promobanner2,
                    applyImageRadius: true),
                const SizedBox(height: TSizes.spaceBtwSections),
                Column(
                  children: [
                    ///heading

                    TSectionHeading(
                      title: 'Bags & Items',
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
                              image: TImages.handbag,
                              brand: 'Bags & Items',
                              price: '25',
                              description: 'Brand new Hand Bag ',
                              percent: '15',
                            );
                          } else if (index == 1) {
                            return const TProductCardHorizontal2(
                              image: TImages.travelbag,
                              brand: 'Bags & Items',
                              price: '30',
                              description: 'Brand new Travel Bag',
                              percent: '10',
                            );
                          } else if (index == 2) {
                            return const TProductCardHorizontal2(
                              image: TImages.schoolbag,
                              brand: 'Bags & Items',
                              price: '10',
                              description: 'Brand new School Bag',
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
