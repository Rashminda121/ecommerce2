import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductImageSlider2 extends StatelessWidget {
  const TProductImageSlider2({
    super.key, required this.image, required this.iconColour,
  });

  final String image;
  final Color iconColour;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgesWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(image))),
              ),
            ),

            /// image slider
            // Positioned(
            //   right: 0,
            //   bottom: 30,
            //   left: TSizes.defaultSpace,
            //   child: SizedBox(
            //     height: 80,
            //     child: ListView.separated(
            //       itemCount: 6,
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       physics: const AlwaysScrollableScrollPhysics(),
            //       itemBuilder: (_, index) => TRoundedImage(
            //         width: 80,
            //         backgroundColor:
            //         dark ? TColors.dark : TColors.white,
            //         border: Border.all(color: TColors.primary),
            //         padding: const EdgeInsets.all(TSizes.sm),
            //         imageUrl: TImages.product1,
            //       ),
            //       separatorBuilder: (_, __) =>
            //       const SizedBox(width: TSizes.spaceBtwItems),
            //     ),
            //   ),
            // ),

            ///App Bar Icons
             TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: iconColour,
                ),
              ],
            ),




          ], // TCurvedEdgesWidget
        ),
      ),
    );
  }
}