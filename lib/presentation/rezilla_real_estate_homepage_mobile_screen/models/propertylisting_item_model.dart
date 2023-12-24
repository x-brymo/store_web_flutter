import 'package:store_web_flutter/core/utils/image_constant.dart';

import '../../../core/app_export.dart';

/// This class is used in the [propertylisting_item_widget] screen.
class PropertylistingItemModel {
  PropertylistingItemModel({
    this.price,
    this.title,
    this.address,
    this.bedImage,
    this.bedText,
    this.thumbsUpImage,
    this.bathText,
    this.id,
  }) {
    price = price ?? " 3,450";
    title = title ?? "Charming Cottage in the Meadow";
    address = address ?? "1508 Centennial Farm RoadHarlan, 51537";
    bedImage = bedImage ?? ImageConstant.imgTelevision;
    bedText = bedText ?? "4 Beds";
    thumbsUpImage = thumbsUpImage ?? ImageConstant.imgThumbsUp;
    bathText = bathText ?? "4 Bath";
    id = id ?? "";
  }

  String? price;

  String? title;

  String? address;

  String? bedImage;

  String? bedText;

  String? thumbsUpImage;

  String? bathText;

  String? id;
}
