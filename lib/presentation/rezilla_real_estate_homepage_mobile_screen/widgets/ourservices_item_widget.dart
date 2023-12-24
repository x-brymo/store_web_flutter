import 'package:store_web_flutter/theme/custom_text_style.dart';

import '../models/ourservices_item_model.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class OurservicesItemWidget extends StatelessWidget {
  OurservicesItemWidget(
    this.ourservicesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OurservicesItemModel ourservicesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Text(
      ourservicesItemModelObj.ourservices!,
      style: CustomTextStyles.titleMedium_1,
    );
  }
}
