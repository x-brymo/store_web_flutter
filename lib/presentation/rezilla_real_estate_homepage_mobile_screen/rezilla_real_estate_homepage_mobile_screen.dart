import 'package:store_web_flutter/core/app_export.dart';
import 'package:store_web_flutter/core/utils/image_constant.dart';
import 'package:store_web_flutter/core/utils/size_utils.dart';
import 'package:store_web_flutter/core/utils/validation_functions.dart';
import 'package:store_web_flutter/localization/app_localization.dart';
import 'package:store_web_flutter/theme/app_decoration.dart';
import 'package:store_web_flutter/theme/custom_text_style.dart';
import 'package:store_web_flutter/theme/theme_helper.dart';
import 'package:store_web_flutter/widgets/custom_elevated_button.dart';
import 'package:store_web_flutter/widgets/custom_icon_button.dart';
import 'package:store_web_flutter/widgets/custom_image_view.dart';
import 'package:store_web_flutter/widgets/custom_outlined_button.dart';
import 'package:store_web_flutter/widgets/custom_text_form_field.dart';

import '../rezilla_real_estate_homepage_mobile_screen/widgets/ourservices_item_widget.dart';
import '../rezilla_real_estate_homepage_mobile_screen/widgets/propertylisting_item_widget.dart';
import 'bloc/rezilla_real_estate_homepage_mobile_bloc.dart';
import 'models/ourservices_item_model.dart';
import 'models/propertylisting_item_model.dart';
import 'models/rezilla_real_estate_homepage_mobile_model.dart';
import 'package:flutter/material.dart';
//import 'package:web_app_flutter_real_estate/core/app_export.dart';


class RezillaRealEstateHomepageMobileScreen extends StatelessWidget {
  RezillaRealEstateHomepageMobileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RezillaRealEstateHomepageMobileBloc>(
      create: (context) => RezillaRealEstateHomepageMobileBloc(
          RezillaRealEstateHomepageMobileState(
        rezillaRealEstateHomepageMobileModelObj:
            RezillaRealEstateHomepageMobileModel(),
      ))
        ..add(RezillaRealEstateHomepageMobileInitialEvent()),
      child: RezillaRealEstateHomepageMobileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildSeventy1(context),
                  SizedBox(height: 63.v),
                  SizedBox(
                    width: 225.h,
                    child: Text(
                      "msg_trusted_by_100".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumGray600,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  _buildWidget1(context),
                  SizedBox(height: 50.v),
                  _buildTwentyOne(context),
                  SizedBox(height: 28.v),
                  _buildNewListings(context),
                  SizedBox(height: 9.v),
                  Container(
                    width: 331.h,
                    margin: EdgeInsets.only(
                      left: 30.h,
                      right: 31.h,
                    ),
                    child: Text(
                      "msg_donec_porttitor".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.65,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildE(context),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: _buildSettings(
                      context,
                      settingsImage: ImageConstant.imgSettingsIndigoA400,
                      donecPorttitorText: "msg_donec_porttitor2".tr,
                      nullamALaciniaText: "msg_nullam_a_lacinia".tr,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: _buildSettings(
                      context,
                      settingsImage: ImageConstant.imgSettingsIndigoA40037x34,
                      donecPorttitorText: "msg_donec_porttitor2".tr,
                      nullamALaciniaText: "msg_nullam_a_lacinia".tr,
                    ),
                  ),
                  SizedBox(height: 93.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "msg_checkout_our_new".tr,
                        style: CustomTextStyles.titleMediumIndigoA400_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_latest_listed_properties".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 294.h,
                      margin: EdgeInsets.only(
                        left: 30.h,
                        right: 68.h,
                      ),
                      child: Text(
                        "msg_donec_porttitor3".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.65,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 30.h,
                        right: 58.h,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 80.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 12.v,
                            ),
                            decoration:
                                AppDecoration.outlineDeepPurple.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24,
                            ),
                            child: Text(
                              "lbl_all".tr,
                              style: CustomTextStyles.titleMediumDeeppurple900,
                            ),
                          ),
                          Container(
                            width: 88.h,
                            margin: EdgeInsets.only(left: 20.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 12.v,
                            ),
                            decoration: AppDecoration.fillDeepPurple.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24,
                            ),
                            child: Text(
                              "lbl_sell".tr,
                              style: CustomTextStyles.titleMediumPrimary,
                            ),
                          ),
                          Container(
                            width: 97.h,
                            margin: EdgeInsets.only(left: 20.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 12.v,
                            ),
                            decoration:
                                AppDecoration.outlineDeepPurple.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24,
                            ),
                            child: Text(
                              "lbl_rent".tr,
                              style: CustomTextStyles.titleMediumDeeppurple900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40.v),
                  _buildPopular1(context),
                  SizedBox(height: 12.v),
                  _buildThirtyThree(context),
                  SizedBox(height: 28.v),
                  _buildNewListing1(context),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_1_970".tr,
                        style: CustomTextStyles.titleMedium19,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "msg_serene_retreat_by".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "msg_1964_jehovah_drive".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            height: 15.v,
                            width: 22.h,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "lbl_3_beds".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsUp,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                            margin: EdgeInsets.only(left: 20.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "lbl_2_bath".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 28.v),
                  _buildViewMoreProperties1(context),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 155.v,
                      width: 204.h,
                      margin: EdgeInsets.only(left: 30.h),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 81.adaptSize,
                                width: 81.adaptSize,
                                margin: EdgeInsets.only(top: 17.v),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    40.h,
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.5, 0),
                                    end: Alignment(0.5, 1),
                                    colors: [
                                      appTheme.indigoA400.withOpacity(0.53),
                                      appTheme.indigoA40087,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 155.adaptSize,
                              width: 155.adaptSize,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle28,
                                    height: 155.adaptSize,
                                    width: 155.adaptSize,
                                    radius: BorderRadius.circular(
                                      20.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.h,
                                        right: 16.h,
                                        bottom: 14.v,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Opacity(
                                            opacity: 0.6,
                                            child: Container(
                                              decoration:
                                                  AppDecoration.outlineBlackF,
                                              child: Text(
                                                "lbl_112".tr,
                                                style: CustomTextStyles
                                                    .headlineMediumPrimary_1,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 4.v),
                                          Text(
                                            "msg_san_francisco_ca".tr,
                                            style: CustomTextStyles
                                                .bodyMediumPrimary_1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 93.v),
                  Text(
                    "msg_introduce_yourself".tr.toUpperCase(),
                    style: CustomTextStyles.titleMediumIndigoA400_1,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_our_team_of_experts".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.h),
                    child: _buildWidget(
                      context,
                      image1: ImageConstant.imgRectangle29,
                      image2: ImageConstant.imgRectangle30,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 67.h,
                      right: 49.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "lbl_brendon_m".tr,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 67.h),
                          child: Text(
                            "lbl_jodi_j_appleby".tr,
                            style:
                                CustomTextStyles.titleMediumOnPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 61.h,
                        right: 39.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "lbl_ceo_founder".tr,
                              style: CustomTextStyles.bodyMediumIndigoA400,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50.h),
                            child: Text(
                              "msg_real_estate_developer".tr,
                              style: CustomTextStyles.bodyMediumIndigoA400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 43.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.h),
                    child: _buildWidget(
                      context,
                      image1: ImageConstant.imgRectangle31,
                      image2: ImageConstant.imgRectangle32,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 54.h,
                      right: 50.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_justin_s_meza".tr,
                          style: CustomTextStyles.titleMediumOnPrimaryContainer,
                        ),
                        Text(
                          "lbl_susan_t_smith".tr,
                          style: CustomTextStyles.titleMediumOnPrimaryContainer,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 67.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_listing_agent".tr,
                          style: CustomTextStyles.bodyMediumIndigoA400,
                        ),
                        Text(
                          "lbl_buyer_s_agent".tr,
                          style: CustomTextStyles.bodyMediumIndigoA400,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 93.v),
                  _buildNinetyFive(context),
                  SizedBox(height: 93.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_testimonials".tr,
                        style: CustomTextStyles.titleMediumIndigoA400_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 222.h,
                      margin: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "msg_look_what_our_customers".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildTimeZone(context),
                  SizedBox(height: 20.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup60,
                    height: 1.v,
                    width: 140.h,
                  ),
                  SizedBox(height: 29.v),
                  _buildRegisterNow1(context),
                  SizedBox(height: 100.v),
                  _buildNinetyTwo(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 21.h,
      ),
      child: BlocSelector<RezillaRealEstateHomepageMobileBloc,
          RezillaRealEstateHomepageMobileState, TextEditingController?>(
        selector: (state) => state.seventyController,
        builder: (context, seventyController) {
          return CustomTextFormField(
            controller: seventyController,
            hintText: "msg_new_york_san_francisco".tr,
            borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 21.h,
      ),
      child: BlocSelector<RezillaRealEstateHomepageMobileBloc,
          RezillaRealEstateHomepageMobileState, TextEditingController?>(
        selector: (state) => state.sixtyNineController,
        builder: (context, sixtyNineController) {
          return CustomTextFormField(
            controller: sixtyNineController,
            hintText: "msg_select_property".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectRooms(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 21.h,
      ),
      child: BlocSelector<RezillaRealEstateHomepageMobileBloc,
          RezillaRealEstateHomepageMobileState, TextEditingController?>(
        selector: (state) => state.selectRoomsController,
        builder: (context, selectRoomsController) {
          return CustomTextFormField(
            controller: selectRoomsController,
            hintText: "lbl_select_rooms".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      text: "lbl_search".tr,
      margin: EdgeInsets.only(
        left: 22.h,
        right: 21.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgContrast,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventy1(BuildContext context) {
    return SizedBox(
      height: 1053.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 54.adaptSize,
              width: 54.adaptSize,
              margin: EdgeInsets.only(
                top: 317.v,
                right: 63.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  27.h,
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.indigoA400,
                    appTheme.indigoA40087.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.gradientLightBlueCToIndigoA.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL800,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        padding: EdgeInsets.all(13.h),
                        decoration: IconButtonStyleHelper.fillDeepPurple,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgReshotIconHouseXj53qbrvtc,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 9.v,
                          bottom: 10.v,
                        ),
                        child: Text(
                          "lbl_rezilla".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgMegaphone,
                        height: 21.v,
                        width: 24.h,
                        margin: EdgeInsets.symmetric(vertical: 14.v),
                      ),
                    ],
                  ),
                  SizedBox(height: 42.v),
                  SizedBox(
                    height: 135.v,
                    width: 333.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 333.h,
                            child: Text(
                              "msg_find_a_perfect_home".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.displaySmall!.copyWith(
                                height: 1.18,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "lbl_real_estate".tr,
                            style: CustomTextStyles.titleMediumIndigoA400_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 304.h,
                      margin: EdgeInsets.only(right: 28.h),
                      child: Text(
                        "msg_etiam_eget_elementum".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.65,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 38.v),
                  SizedBox(
                    height: 200.v,
                    width: 333.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLuxuryClassic,
                          height: 200.v,
                          width: 333.h,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 80.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(12.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineBlueGrayC,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                  ),
                                ),
                                CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(12.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineBlueGrayC,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup5,
                    height: 1.v,
                    width: 295.h,
                  ),
                  SizedBox(height: 10.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30.h),
              decoration: AppDecoration.white.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 13.v,
                      bottom: 12.v,
                    ),
                    decoration: AppDecoration.outlineBlueGray,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.v),
                          child: Text(
                            "lbl_for_sale".tr,
                            style: CustomTextStyles.titleMediumDeeppurple900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.v),
                          child: Text(
                            "lbl_for_rent".tr,
                            style: CustomTextStyles.titleMediumGray600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 150.h,
                      child: Divider(
                        indent: 50.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 38.v),
                  _buildSeventy(context),
                  SizedBox(height: 20.v),
                  _buildSixtyNine(context),
                  SizedBox(height: 20.v),
                  _buildSelectRooms(context),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 2.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text(
                              "lbl_advance_search".tr,
                              style: CustomTextStyles.bodyMediumDeeppurple900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 37.v),
                  _buildSearch(context),
                  SizedBox(height: 40.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget1(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 30.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage1,
                height: 40.v,
                width: 120.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage2,
                height: 36.v,
                width: 120.h,
                margin: EdgeInsets.only(
                  left: 30.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: 36.v,
                width: 120.h,
                margin: EdgeInsets.only(
                  left: 30.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage4,
                height: 36.v,
                width: 120.h,
                margin: EdgeInsets.only(
                  left: 30.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage5,
                height: 40.v,
                width: 120.h,
                margin: EdgeInsets.only(left: 30.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage6,
                height: 36.v,
                width: 110.h,
                margin: EdgeInsets.only(left: 30.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineBlackF.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder46,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 33.v,
            width: 143.h,
            margin: EdgeInsets.symmetric(vertical: 9.v),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse3,
                  height: 33.adaptSize,
                  width: 33.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse4,
                  height: 33.adaptSize,
                  width: 33.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 22.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse5,
                  height: 33.adaptSize,
                  width: 33.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 43.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse6,
                  height: 33.adaptSize,
                  width: 33.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 44.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse7,
                  height: 33.adaptSize,
                  width: 33.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 22.h),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse8,
                          height: 33.adaptSize,
                          width: 33.adaptSize,
                          radius: BorderRadius.circular(
                            16.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl".tr,
                            style: CustomTextStyles.titleMediumPrimary19,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 96.h,
            margin: EdgeInsets.only(
              left: 9.h,
              bottom: 3.v,
            ),
            child: Text(
              "msg_72k_happy_customers".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewListings(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 38.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.outlineBlackF.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder50,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse360x60,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                ),
                Container(
                  width: 142.h,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "msg_200_new_listings".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 93.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_who_are_we".tr,
              style: CustomTextStyles.titleMediumIndigoA400_1,
            ),
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: 333.h,
            child: Text(
              "msg_assisting_individuals".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildE(BuildContext context) {
    return SizedBox(
      height: 330.v,
      width: 333.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle14,
            height: 260.v,
            width: 170.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.bottomLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle15,
            height: 141.v,
            width: 143.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 40.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle16,
            height: 100.v,
            width: 143.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 29.v),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 124.v,
              width: 116.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 13.v),
                            child: Text(
                              "lbl_e".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Container(
                            height: 21.v,
                            width: 20.h,
                            margin: EdgeInsets.only(
                              left: 1.h,
                              bottom: 2.v,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "lbl_e2".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      top: 1.v,
                                    ),
                                    child: Text(
                                      "lbl_a".tr,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "lbl_l".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6.v),
                            child: Text(
                              "lbl_r".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 124.v,
                      width: 116.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                bottom: 25.v,
                              ),
                              child: Text(
                                "lbl_s".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 9.h,
                                bottom: 24.v,
                              ),
                              child: Text(
                                "lbl_t".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 6.h,
                                bottom: 29.v,
                              ),
                              child: Text(
                                "lbl_c".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 9.h,
                                bottom: 23.v,
                              ),
                              child: Text(
                                "lbl_e2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 16.h,
                                bottom: 13.v,
                              ),
                              child: Text(
                                "lbl_2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 22.h,
                                bottom: 8.v,
                              ),
                              child: Text(
                                "lbl_0".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 30.h,
                                bottom: 4.v,
                              ),
                              child: Text(
                                "lbl_2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 37.h,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "lbl_2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 51.h),
                              child: Text(
                                "lbl2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              height: 88.v,
                              width: 116.h,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text(
                                        "lbl_a".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "lbl_t".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 2.h,
                                        bottom: 13.v,
                                      ),
                                      child: Text(
                                        "lbl_e2".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 87.v,
                                      width: 116.h,
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                right: 2.h,
                                                bottom: 37.v,
                                              ),
                                              child: Text(
                                                "lbl_t".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                right: 1.h,
                                                bottom: 27.v,
                                              ),
                                              child: Text(
                                                "lbl_e2".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 12.v),
                                              child: Text(
                                                "lbl_s2".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 6.v),
                                              child: Text(
                                                "lbl_i".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 3.h),
                                              child: Text(
                                                "lbl_n".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 55.v,
                                                        width: 45.h,
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Text(
                                                                "lbl_i".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 3
                                                                            .h),
                                                                child: Text(
                                                                  "lbl_n".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 5.h,
                                                                  bottom: 7.v,
                                                                ),
                                                                child: Text(
                                                                  "lbl_c".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 8.h,
                                                                  bottom: 14.v,
                                                                ),
                                                                child: Text(
                                                                  "lbl_e2".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 15.h,
                                                                  top: 12.v,
                                                                ),
                                                                child: Text(
                                                                  "lbl_2".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top: 7.v,
                                                                  right: 12.h,
                                                                ),
                                                                child: Text(
                                                                  "lbl_0".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top: 3.v,
                                                                  right: 6.h,
                                                                ),
                                                                child: Text(
                                                                  "lbl_2".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Text(
                                                                "lbl_2".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        "lbl_s2".tr,
                                                        style: theme.textTheme
                                                            .labelLarge,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 4.h,
                                                    bottom: 23.v,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          7.v),
                                                              child: Text(
                                                                "lbl2".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 25.v,
                                                              width: 28.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          6.h),
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Text(
                                                                      "lbl_r"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left:
                                                                            7.h,
                                                                        top:
                                                                            2.v,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        "lbl_e2"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelLarge,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        right:
                                                                            3.h,
                                                                        bottom:
                                                                            1.v,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        "lbl_a"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelLarge,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child: Text(
                                                                      "lbl_l"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          14.v),
                                                              child: Text(
                                                                "lbl_e".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 6.h),
                                                        child: Text(
                                                          "lbl_s".tr,
                                                          style: theme.textTheme
                                                              .labelLarge,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 2.h),
                                                        child: Text(
                                                          "lbl_t".tr,
                                                          style: theme.textTheme
                                                              .labelLarge,
                                                        ),
                                                      ),
                                                      Text(
                                                        "lbl_a".tr,
                                                        style: theme.textTheme
                                                            .labelLarge,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.only(right: 44.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    27.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      appTheme.indigoA400.withOpacity(0.53),
                      appTheme.indigoA40087,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopular(BuildContext context) {
    return CustomElevatedButton(
      width: 123.h,
      text: "lbl_popular".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        bottom: 20.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 15.v,
          width: 14.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
      buttonTextStyle: CustomTextStyles.bodyMediumPrimaryContainer,
      alignment: Alignment.bottomLeft,
    );
  }

  /// Section Widget
  Widget _buildPopular1(BuildContext context) {
    return SizedBox(
      height: 220.v,
      width: 333.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle18,
            height: 220.v,
            width: 333.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          _buildPopular(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyThree(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_5_970".tr,
            style: CustomTextStyles.titleMedium19,
          ),
          SizedBox(height: 2.v),
          Text(
            "msg_tranquil_haven_in".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 2.v),
          Text(
            "msg_103_wright_courtburien".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTelevision,
                height: 15.v,
                width: 22.h,
                margin: EdgeInsets.only(top: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "lbl_4_beds".tr,
                  style: CustomTextStyles.bodyMediumOnPrimary,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(left: 20.h),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "lbl_3_bath".tr,
                  style: CustomTextStyles.bodyMediumOnPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewListing(BuildContext context) {
    return CustomElevatedButton(
      width: 146.h,
      text: "lbl_new_listing".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        bottom: 20.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgHome,
          height: 14.adaptSize,
          width: 14.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnError,
      buttonTextStyle: CustomTextStyles.bodyMediumBlue500,
      alignment: Alignment.bottomLeft,
    );
  }

  /// Section Widget
  Widget _buildNewListing1(BuildContext context) {
    return SizedBox(
      height: 220.v,
      width: 333.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle20,
            height: 220.v,
            width: 333.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          _buildNewListing(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewMoreProperties(BuildContext context) {
    return CustomOutlinedButton(
      width: 233.h,
      text: "msg_view_more_properties".tr,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildDiscountedPrice(BuildContext context) {
    return CustomElevatedButton(
      width: 178.h,
      text: "msg_discounted_price".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        bottom: 20.v,
      ),
      buttonStyle: CustomButtonStyles.fillLightGreen,
      buttonTextStyle: CustomTextStyles.bodyMediumErrorContainer,
      alignment: Alignment.bottomLeft,
    );
  }

  /// Section Widget
  Widget _buildViewMoreProperties1(BuildContext context) {
    return SizedBox(
      height: 2607.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 564.v),
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 93.v,
              ),
              decoration: AppDecoration.fillBlueGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocSelector<
                      RezillaRealEstateHomepageMobileBloc,
                      RezillaRealEstateHomepageMobileState,
                      RezillaRealEstateHomepageMobileModel?>(
                    selector: (state) =>
                        state.rezillaRealEstateHomepageMobileModelObj,
                    builder:
                        (context, rezillaRealEstateHomepageMobileModelObj) {
                      return GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 25.v,
                          crossAxisCount: 1,
                          mainAxisSpacing: 1.h,
                          crossAxisSpacing: 1.h,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: rezillaRealEstateHomepageMobileModelObj
                                ?.ourservicesItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          OurservicesItemModel model =
                              rezillaRealEstateHomepageMobileModelObj
                                      ?.ourservicesItemList[index] ??
                                  OurservicesItemModel();
                          return OurservicesItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 30.v),
                  _buildSeventySix(
                    context,
                    rentAHouseText: "lbl_sell_a_house".tr,
                    donecPorttitorText: "msg_donec_porttitor3".tr,
                  ),
                  SizedBox(height: 30.v),
                  _buildSeventySix(
                    context,
                    rentAHouseText: "lbl_rent_a_house".tr,
                    donecPorttitorText: "msg_donec_porttitor3".tr,
                  ),
                  SizedBox(height: 6.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                bottom: 357.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildViewMoreProperties(context),
                  SizedBox(height: 1203.v),
                  Opacity(
                    opacity: 0.5,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 68.adaptSize,
                        width: 68.adaptSize,
                        margin: EdgeInsets.only(right: 24.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            34.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.indigoA400.withOpacity(0.53),
                              appTheme.indigoA40087,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Text(
                    "msg_areas_across_the".tr,
                    style: CustomTextStyles.titleMediumIndigoA400_1,
                  ),
                  SizedBox(height: 2.v),
                  SizedBox(
                    width: 201.h,
                    child: Text(
                      "msg_neighborhood_properties".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 155.adaptSize,
              width: 155.adaptSize,
              margin: EdgeInsets.only(
                left: 30.h,
                bottom: 178.v,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle17,
                    height: 155.adaptSize,
                    width: 155.adaptSize,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 20.h,
                        bottom: 13.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.6,
                            child: Container(
                              decoration: AppDecoration.outlineBlackF,
                              child: Text(
                                "lbl_216".tr,
                                style: CustomTextStyles.headlineMediumPrimary_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "msg_new_york_city_ny".tr,
                            style: CustomTextStyles.bodyMediumPrimary_1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 155.adaptSize,
              width: 155.adaptSize,
              margin: EdgeInsets.only(
                right: 30.h,
                bottom: 178.v,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle41,
                    height: 155.adaptSize,
                    width: 155.adaptSize,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        bottom: 13.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.6,
                            child: Container(
                              decoration: AppDecoration.outlineBlackF,
                              child: Text(
                                "lbl_141".tr,
                                style: CustomTextStyles.headlineMediumPrimary_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "lbl_houston_tx".tr,
                            style: CustomTextStyles.bodyMediumPrimary_1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle27,
            height: 155.adaptSize,
            width: 155.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 30.h),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 59.h,
                bottom: 13.v,
              ),
              child: Text(
                "msg_philadelphia_pa".tr,
                style: CustomTextStyles.bodyMediumPrimary_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                right: 30.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 220.v,
                    width: 333.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle20220x333,
                          height: 220.v,
                          width: 333.h,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        _buildDiscountedPrice(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    height: 2374.v,
                    width: 338.h,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle21,
                          height: 220.v,
                          width: 338.h,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 135.v),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              right: 58.h,
                            ),
                            child: BlocSelector<
                                RezillaRealEstateHomepageMobileBloc,
                                RezillaRealEstateHomepageMobileState,
                                RezillaRealEstateHomepageMobileModel?>(
                              selector: (state) =>
                                  state.rezillaRealEstateHomepageMobileModelObj,
                              builder: (context,
                                  rezillaRealEstateHomepageMobileModelObj) {
                                return GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 107.v,
                                    crossAxisCount: 1,
                                    mainAxisSpacing: 1.h,
                                    crossAxisSpacing: 1.h,
                                  ),
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount:
                                      rezillaRealEstateHomepageMobileModelObj
                                              ?.propertylistingItemList
                                              .length ??
                                          0,
                                  itemBuilder: (context, index) {
                                    PropertylistingItemModel model =
                                        rezillaRealEstateHomepageMobileModelObj
                                                    ?.propertylistingItemList[
                                                index] ??
                                            PropertylistingItemModel();
                                    return PropertylistingItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewMoreBlogs(BuildContext context) {
    return CustomOutlinedButton(
      width: 195.h,
      text: "lbl_view_more_blogs".tr,
    );
  }

  /// Section Widget
  Widget _buildNinetyFive(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 93.v,
      ),
      decoration: AppDecoration.fillDeepPurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_what_s_trending".tr.toUpperCase(),
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_latest_blogs_posts".tr,
              style: CustomTextStyles.headlineMediumPrimary,
            ),
          ),
          SizedBox(height: 25.v),
          SizedBox(
            height: 200.v,
            width: 333.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle35,
                  height: 200.v,
                  width: 333.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.only(left: 30.h),
                    color: theme.colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.customBorderBL10,
                    ),
                    child: Container(
                      height: 45.v,
                      width: 44.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.outlineBlack9003f.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL10,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_28".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "lbl_tue".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            width: 312.h,
            margin: EdgeInsets.only(right: 20.h),
            child: Text(
              "msg_top_10_home_buying".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumPrimary19,
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            width: 300.h,
            margin: EdgeInsets.only(right: 32.h),
            child: Text(
              "msg_etiam_eget_elementum2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBluegray100.copyWith(
                height: 1.65,
              ),
            ),
          ),
          SizedBox(height: 32.v),
          SizedBox(
            height: 200.v,
            width: 333.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle36,
                  height: 200.v,
                  width: 333.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.only(left: 30.h),
                    color: theme.colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.customBorderBL10,
                    ),
                    child: Container(
                      height: 45.v,
                      width: 49.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.outlineBlack9003f.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL10,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_08".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "lbl_mon".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            width: 290.h,
            margin: EdgeInsets.only(right: 42.h),
            child: Text(
              "msg_how_to_stage_your".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumPrimary19,
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: 317.h,
            margin: EdgeInsets.only(right: 15.h),
            child: Text(
              "msg_nullam_odio_lacus".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBluegray100.copyWith(
                height: 1.65,
              ),
            ),
          ),
          SizedBox(height: 35.v),
          SizedBox(
            height: 200.v,
            width: 333.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle37,
                  height: 200.v,
                  width: 333.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.only(left: 30.h),
                    color: theme.colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.customBorderBL10,
                    ),
                    child: Container(
                      height: 45.v,
                      width: 51.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.outlineBlack9003f.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL10,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "lbl_26".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "lbl_wed".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "msg_5_tips_for_first_time".tr,
            style: CustomTextStyles.titleMediumPrimary19,
          ),
          SizedBox(height: 4.v),
          Container(
            width: 310.h,
            margin: EdgeInsets.only(right: 22.h),
            child: Text(
              "msg_in_hac_habitasse".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBluegray100.copyWith(
                height: 1.65,
              ),
            ),
          ),
          SizedBox(height: 52.v),
          _buildViewMoreBlogs(context),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeZone(BuildContext context) {
    return SizedBox(
      height: 424.v,
      width: 333.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 298.h,
              child: Text(
                "msg_fusce_venenatis".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumOnPrimary.copyWith(
                  height: 1.65,
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.only(
                  top: 35.v,
                  right: 47.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    27.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      appTheme.indigoA400.withOpacity(0.53),
                      appTheme.indigoA40087,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 28.v,
              ),
              decoration: AppDecoration.outlineBlack9003f1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 12.v),
                  CustomImageView(
                    imagePath: ImageConstant.img,
                    height: 37.v,
                    width: 60.h,
                  ),
                  SizedBox(height: 12.v),
                  Container(
                    width: 269.h,
                    margin: EdgeInsets.only(right: 3.h),
                    child: Text(
                      "msg_i_highly_recommend".tr,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Divider(
                    color: appTheme.blueGray100,
                  ),
                  SizedBox(height: 16.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse15,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        radius: BorderRadius.circular(
                          25.h,
                        ),
                        margin: EdgeInsets.only(top: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          bottom: 5.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_barbara_d_smith".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 9.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 13.v,
                              width: 86.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterNow(BuildContext context) {
    return CustomOutlinedButton(
      width: 165.h,
      text: "lbl_register_now".tr,
      margin: EdgeInsets.only(left: 10.h),
    );
  }

  /// Section Widget
  Widget _buildRegisterNow1(BuildContext context) {
    return SizedBox(
      height: 582.v,
      width: 333.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              decoration: AppDecoration.fillDeepPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 92.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_become_a_agent".tr,
                      style: CustomTextStyles.headlineMediumPrimary,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 270.h,
                      margin: EdgeInsets.only(
                        left: 10.h,
                        right: 12.h,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_fusce_venenatis3".tr,
                              style: CustomTextStyles.bodyMediumPrimary,
                            ),
                            TextSpan(
                              text: "msg_venenatis_tellus".tr,
                              style: CustomTextStyles.bodyMediumPrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(height: 32.v),
                  _buildRegisterNow(context),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 262.v,
                      width: 270.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                height: 54.adaptSize,
                                width: 54.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 28.h,
                                  bottom: 87.v,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    27.h,
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.5, 0),
                                    end: Alignment(0.5, 1),
                                    colors: [
                                      theme.colorScheme.primary
                                          .withOpacity(0.53),
                                      theme.colorScheme.primary
                                          .withOpacity(0.53),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplash7uommzpd2ja,
                            height: 262.v,
                            width: 270.h,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 136.adaptSize,
                width: 136.adaptSize,
                margin: EdgeInsets.only(right: 9.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    68.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      theme.colorScheme.primary.withOpacity(0.53),
                      theme.colorScheme.primary.withOpacity(0.53),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: BlocSelector<RezillaRealEstateHomepageMobileBloc,
          RezillaRealEstateHomepageMobileState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "lbl_email_address".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 18.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackF,
            fillColor: theme.colorScheme.primary,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillIndigoA,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 60.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(13.h),
                decoration: IconButtonStyleHelper.fillDeepPurple,
                child: CustomImageView(
                  imagePath: ImageConstant.imgReshotIconHouseXj53qbrvtc,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 9.v,
                  bottom: 10.v,
                ),
                child: Text(
                  "lbl_rezilla".tr,
                  style: CustomTextStyles.titleLargeOnPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 23.v),
          SizedBox(
            width: 184.h,
            child: Text(
              "msg_2728_hickory_streetsalt".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray600,
            ),
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCall,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 5.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "lbl_1_206_214_2298".tr,
                  style: CustomTextStyles.titleMediumGray600,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 11.v,
                width: 16.h,
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 8.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "msg_support_rezilla_com".tr,
                  style: CustomTextStyles.titleMediumGray600,
                ),
              ),
            ],
          ),
          SizedBox(height: 25.v),
          SizedBox(
            width: 131.h,
            child: Text(
              "msg_subscribe_to_our".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 15.v),
          _buildEmail(context),
          SizedBox(height: 33.v),
          Text(
            "lbl_follow_us_on".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 128.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLink,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                  height: 22.v,
                  width: 11.h,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgInfo,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 50.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 101.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Text(
              "msg_rezilla_all".tr,
              style: CustomTextStyles.bodyMediumGray500,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSettings(
    BuildContext context, {
    required String settingsImage,
    required String donecPorttitorText,
    required String nullamALaciniaText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineBlack9003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: settingsImage,
            height: 37.v,
            width: 34.h,
            margin: EdgeInsets.symmetric(vertical: 17.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    donecPorttitorText,
                    style: CustomTextStyles.titleMediumIndigoA400.copyWith(
                      color: appTheme.indigoA400,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Container(
                    width: 183.h,
                    margin: EdgeInsets.only(right: 12.h),
                    child: Text(
                      nullamALaciniaText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appTheme.gray600,
                        height: 1.65,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeventySix(
    BuildContext context, {
    required String rentAHouseText,
    required String donecPorttitorText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 49.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.outlineBlack9003f1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          CustomIconButton(
            height: 60.adaptSize,
            width: 60.adaptSize,
            padding: EdgeInsets.all(16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconBed,
            ),
          ),
          SizedBox(height: 13.v),
          Text(
            rentAHouseText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
          SizedBox(height: 3.v),
          SizedBox(
            width: 232.h,
            child: Text(
              donecPorttitorText,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.gray600,
                height: 1.65,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: image1,
          height: 168.v,
          width: 120.h,
          radius: BorderRadius.only(
            topLeft: Radius.circular(80.h),
            topRight: Radius.circular(20.h),
            bottomLeft: Radius.circular(20.h),
            bottomRight: Radius.circular(20.h),
          ),
        ),
        CustomImageView(
          imagePath: image2,
          height: 168.v,
          width: 120.h,
          radius: BorderRadius.only(
            topLeft: Radius.circular(80.h),
            topRight: Radius.circular(20.h),
            bottomLeft: Radius.circular(20.h),
            bottomRight: Radius.circular(20.h),
          ),
        ),
      ],
    );
  }
}
