import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/pcv.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_ctegories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryheaderContainer(
              child: Column(
                children: [
                  ///App Bar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// search bar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        ///categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            ///body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// promo slider
                  const TPromoSlider(
                    banners: [
                      TImages.promobanner3,
                      TImages.promobanner2,
                      TImages.promobanner,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Heading
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///popular products
                  TGridLayout(itemCount: 6, itemBuilder: (_, index) {
                    if (index == 0) {
                      return  const TProductCardVertical2(
                        image: TImages.travelbag,
                        brand: 'Bags & Items',
                        price: '30',
                        description: 'Brand new Travel Bag',
                        percent: '10', iconColour: Colors.red, brandimg: TImages.bag, orprice: '40', col: false,
                      );
                    } else if (index == 1) {
                      return const TProductCardVertical2(
                        image: TImages.schoolbag,
                        brand: 'Bags & Items',
                        price: '10',
                        description: 'Brand new School Bag',
                        percent: '20',
                        iconColour: TColors.grey, brandimg: TImages.bag, orprice: '20', col: false,
                      );
                    }else if (index == 2) {
                      return const TProductCardVertical2(
                        image: TImages.nikeshoe1,
                        brand: 'Shoes',
                        price: '150',
                        description: 'Brand new Nike Shoe ',
                        percent: '15',
                        iconColour: TColors.grey, brandimg: TImages.shoeIcon, orprice: '190', col: true,
                      );
                    }else if (index == 3) {
                      return const TProductCardVertical2(
                        image: TImages.nikeshoe2,
                        brand: 'Shoes',
                        price: '190',
                        description: 'Brand new Nike Shoe',
                        percent: '10',
                        iconColour: Colors.red, brandimg: TImages.shoeIcon, orprice: '250', col: true,
                      );
                    }else if (index == 4) {
                      return const TProductCardVertical2(
                        image: TImages.pumpkin,
                        brand: 'Grocery',
                        price: '25',
                        description: 'Fresh Pumpkin',
                        percent: '15',
                        iconColour: TColors.grey, brandimg:TImages.grocery, orprice: '30', col: false,
                      );
                    }else if (index == 5) {
                      return const TProductCardVertical2(
                        image: TImages.apple,
                        brand: 'Grocery',
                        price: '5',
                        description: 'Fresh Apples',
                        percent: '10',
                        iconColour: TColors.grey, brandimg: TImages.grocery, orprice: '10', col: false,
                      );
                    }
                    return Container(); // Return a default empty container
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
