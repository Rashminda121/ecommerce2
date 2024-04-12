import 'package:ecommerce_app/common/styles/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class TProductAttributes2 extends StatelessWidget {
  const TProductAttributes2({super.key, required this.price, required this.description, required this.orprice, required this.col});

  final String price;
  final String description;
  final String orprice;
  final bool col;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark? TColors.darkerGrey:TColors.grey,
          child:Column(
            children: [
              ///title,price and stock status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation',showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          const TProductTitleText(title: 'Price: ',smallSize: true),

                          /// Actual Price
                          Text(
                            '\$${orprice}',
                            style: Theme.of(context).textTheme.titleSmall!.apply(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          ///sale price
                          TProductPriceText(price: price),
                        ],
                      ),

                      ///stack
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock: ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),


                    ],
                  ),

                ],
              ),

              /// Variation Description

              TProductTitleText(
                title: 'This is Description: $description',
                smallSize: true,
                maxLines: 4,
              ),

            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        if(col==true)
          ///atributes
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TSectionHeading(title: 'Colors' ,showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Wrap(
                spacing: 8,
                children: [
                  TChoiceChip(text: 'Green',selected: true ,onSelected: (value){}),
                  TChoiceChip(text: 'Blue',selected: false,onSelected: (value){}),
                  TChoiceChip(text: 'Red',selected: false,onSelected: (value){}),


                ],
              )
            ],
          ),
        if(col==true)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              children: [
                const TSectionHeading(title: 'Size',showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems / 2),
                TChoiceChip(text: 'EU 34',selected: true,onSelected: (value){}),
                TChoiceChip(text: 'EU 36',selected: false,onSelected: (value){}),
                TChoiceChip(text: 'EU 38',selected: false,onSelected: (value){}),
              ],
            ),
          ],
        ),


      ],
    );
  }
}


