import 'package:ecommerce_app/common/widgets/texts/t_brand_title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../utils/constants/enums.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
const TBrandTitleWithVerifiedIcon({
  super.key,
  this.textColor,
  this.maxLines = 1,
  required this.title,
  this.iconColor = TColors.primary,
  this.textAlign = TextAlign.center,
  this.brandTextSize = TextSizes.small,
});

final String title;
final int maxLines;
final Color? textColor, iconColor;
final TextAlign? textAlign;
final TextSizes brandTextSize;

@override
Widget build(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Flexible(
        child: TBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
      ),
      const SizedBox(width: TSizes.xs),
      Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs),
    ],
  );
}
}