import 'package:store_web_flutter/core/utils/size_utils.dart';
import 'package:store_web_flutter/theme/custom_text_style.dart';
import 'package:store_web_flutter/theme/theme_helper.dart';
import 'package:store_web_flutter/widgets/custom_image_view.dart';

import '../models/propertylisting_item_model.dart';
import 'package:flutter/material.dart';
// import 'package:web_app_flutter_real_estate/core/app_export.dart';

// ignore: must_be_immutable
class PropertylistingItemWidget extends StatelessWidget {
  PropertylistingItemWidget(
    this.propertylistingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PropertylistingItemModel propertylistingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            propertylistingItemModelObj.price!,
            style: CustomTextStyles.titleMedium19,
          ),
          SizedBox(height: 2.v),
          Text(
            propertylistingItemModelObj.title!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 1.v),
          Text(
            propertylistingItemModelObj.address!,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              CustomImageView(
                imagePath: propertylistingItemModelObj?.bedImage,
                height: 15.v,
                width: 22.h,
                margin: EdgeInsets.only(top: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  propertylistingItemModelObj.bedText!,
                  style: CustomTextStyles.bodyMediumOnPrimary,
                ),
              ),
              CustomImageView(
                imagePath: propertylistingItemModelObj?.thumbsUpImage,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(left: 20.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  propertylistingItemModelObj.bathText!,
                  style: CustomTextStyles.bodyMediumOnPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
