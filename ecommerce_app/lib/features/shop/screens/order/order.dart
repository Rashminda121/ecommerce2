import 'package:ecommerce_app/features/shop/screens/order/widgets/orders_list.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-- AppBar
      appBar: TAppBar(
        title:
        Text('My Orders', style: Theme.of(context).textTheme.headlineSmall),showBackArrow: true,),

      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// Orders
        child: TorderListItems(),
      ),
    );
  }
}
