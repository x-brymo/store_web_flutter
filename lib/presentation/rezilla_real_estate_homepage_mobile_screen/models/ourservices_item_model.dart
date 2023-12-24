import '../../../core/app_export.dart';

/// This class is used in the [ourservices_item_widget] screen.
class OurservicesItemModel {
  OurservicesItemModel({
    this.ourservices,
    this.id,
  }) {
    ourservices = ourservices ?? "OUR SERVICES";
    id = id ?? "";
  }

  String? ourservices;

  String? id;
}
