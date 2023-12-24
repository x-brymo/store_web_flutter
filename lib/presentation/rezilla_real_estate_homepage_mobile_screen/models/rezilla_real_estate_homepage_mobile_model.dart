// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'ourservices_item_model.dart';
import 'propertylisting_item_model.dart';

/// This class defines the variables used in the [rezilla_real_estate_homepage_mobile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RezillaRealEstateHomepageMobileModel extends Equatable {
  RezillaRealEstateHomepageMobileModel({
    this.ourservicesItemList = const [],
    this.propertylistingItemList = const [],
  }) {}

  List<OurservicesItemModel> ourservicesItemList;

  List<PropertylistingItemModel> propertylistingItemList;

  RezillaRealEstateHomepageMobileModel copyWith({
    List<OurservicesItemModel>? ourservicesItemList,
    List<PropertylistingItemModel>? propertylistingItemList,
  }) {
    return RezillaRealEstateHomepageMobileModel(
      ourservicesItemList: ourservicesItemList ?? this.ourservicesItemList,
      propertylistingItemList:
          propertylistingItemList ?? this.propertylistingItemList,
    );
  }

  @override
  List<Object?> get props => [ourservicesItemList, propertylistingItemList];
}
