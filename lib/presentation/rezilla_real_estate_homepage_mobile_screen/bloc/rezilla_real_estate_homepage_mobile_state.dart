// ignore_for_file: must_be_immutable

part of 'rezilla_real_estate_homepage_mobile_bloc.dart';

/// Represents the state of RezillaRealEstateHomepageMobile in the application.
class RezillaRealEstateHomepageMobileState extends Equatable {
  RezillaRealEstateHomepageMobileState({
    this.seventyController,
    this.sixtyNineController,
    this.selectRoomsController,
    this.emailController,
    this.rezillaRealEstateHomepageMobileModelObj,
  });

  TextEditingController? seventyController;

  TextEditingController? sixtyNineController;

  TextEditingController? selectRoomsController;

  TextEditingController? emailController;

  RezillaRealEstateHomepageMobileModel? rezillaRealEstateHomepageMobileModelObj;

  @override
  List<Object?> get props => [
        seventyController,
        sixtyNineController,
        selectRoomsController,
        emailController,
        rezillaRealEstateHomepageMobileModelObj,
      ];
  RezillaRealEstateHomepageMobileState copyWith({
    TextEditingController? seventyController,
    TextEditingController? sixtyNineController,
    TextEditingController? selectRoomsController,
    TextEditingController? emailController,
    RezillaRealEstateHomepageMobileModel?
        rezillaRealEstateHomepageMobileModelObj,
  }) {
    return RezillaRealEstateHomepageMobileState(
      seventyController: seventyController ?? this.seventyController,
      sixtyNineController: sixtyNineController ?? this.sixtyNineController,
      selectRoomsController:
          selectRoomsController ?? this.selectRoomsController,
      emailController: emailController ?? this.emailController,
      rezillaRealEstateHomepageMobileModelObj:
          rezillaRealEstateHomepageMobileModelObj ??
              this.rezillaRealEstateHomepageMobileModelObj,
    );
  }
}
