import 'package:ecommerce_app/features/shop/screens/sub_category/sub3.dart';
import 'package:ecommerce_app/features/shop/screens/sub_category/sub4.dart';
import 'package:ecommerce_app/features/shop/screens/sub_category/sub5.dart';
import 'package:ecommerce_app/features/shop/screens/sub_category/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../sub_category/sub2.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4, // Adjust itemCount to the number of categories you have
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          // Adjust title and image based on your categories
          // You might want to use a list of category objects instead of hardcoding them
          if (index == 0) {
            return TVerticalImageText(
              image: TImages.shoeIcon,
              title: 'Shoes',
              onTap: () => Get.to(() => const SubCategoriesScreen5()),
            );
          } else if (index == 1) {
            return TVerticalImageText(
              image: TImages.grocery,
              title: 'Grocery',
              onTap: () => Get.to(() => const SubCategoriesScreen2()),
            );
          }else if (index == 2) {
            return TVerticalImageText(
              image: TImages.shirt,
              title: 'Clothes',
              onTap: () => Get.to(() => const SubCategoriesScreen3()),
            );
          }else if (index == 3) {
            return TVerticalImageText(
              image: TImages.bag,
              title: 'Bags & Items',
              onTap: () => Get.to(() => const SubCategoriesScreen4()),
            );
          }
          // Add more else if blocks for additional categories
          return SizedBox.shrink(); // Return an empty widget if index is out of bounds
        },
      ),
    );
  }
}
