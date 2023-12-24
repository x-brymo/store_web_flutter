import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:store_web_flutter/core/utils/image_constant.dart';
import 'package:store_web_flutter/presentation/rezilla_real_estate_homepage_mobile_screen/models/rezilla_real_estate_homepage_mobile_model.dart';
import '/core/app_export.dart';
import '../models/ourservices_item_model.dart';
import '../models/propertylisting_item_model.dart';
part 'rezilla_real_estate_homepage_mobile_event.dart';
part 'rezilla_real_estate_homepage_mobile_state.dart';

/// A bloc that manages the state of a RezillaRealEstateHomepageMobile according to the event that is dispatched to it.
class RezillaRealEstateHomepageMobileBloc extends Bloc<
    RezillaRealEstateHomepageMobileEvent,
    RezillaRealEstateHomepageMobileState> {
  RezillaRealEstateHomepageMobileBloc(
      RezillaRealEstateHomepageMobileState initialState)
      : super(initialState) {
    on<RezillaRealEstateHomepageMobileInitialEvent>(_onInitialize);
  }

  List<OurservicesItemModel> fillOurservicesItemList() {
    return [
      OurservicesItemModel(ourservices: "OUR SERVICES"),
      OurservicesItemModel(ourservices: "Donec porttitor euismod dignissim")
    ];
  }

  List<PropertylistingItemModel> fillPropertylistingItemList() {
    return [
      PropertylistingItemModel(
          price: " 3,450",
          title: "Charming Cottage in the Meadow",
          address: "1508 Centennial Farm RoadHarlan, 51537",
          bedImage: ImageConstant.imgTelevision,
          bedText: "4 Beds",
          thumbsUpImage: ImageConstant.imgThumbsUp,
          bathText: "4 Bath"),
      PropertylistingItemModel(
          price: " 2,389",
          title: "Grand Estate on the Hilltop",
          address: "103 Wright CourtBurien, WA 98168",
          bedImage: ImageConstant.imgTelevision,
          bedText: "4 Beds",
          thumbsUpImage: ImageConstant.imgThumbsUp,
          bathText: "3 Bath")
    ];
  }

  _onInitialize(
    RezillaRealEstateHomepageMobileInitialEvent event,
    Emitter<RezillaRealEstateHomepageMobileState> emit,
  ) async {
    emit(state.copyWith(
      seventyController: TextEditingController(),
      sixtyNineController: TextEditingController(),
      selectRoomsController: TextEditingController(),
      emailController: TextEditingController(),
    ));
    emit(state.copyWith(
        rezillaRealEstateHomepageMobileModelObj:
            state.rezillaRealEstateHomepageMobileModelObj?.copyWith(
      ourservicesItemList: fillOurservicesItemList(),
      propertylistingItemList: fillPropertylistingItemList(),
    )));
  }
}
