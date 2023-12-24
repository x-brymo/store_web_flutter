import 'package:flutter/material.dart';
import 'package:store_web_flutter/core/utils/size_utils.dart';
import 'package:store_web_flutter/theme/theme_helper.dart';
// import 'package:web_app_flutter_real_estate/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.indigoA400,
                  borderRadius: BorderRadius.circular(30.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.indigoA400.withOpacity(0.4),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        4,
                        10,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple900,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get outlineBlueGrayC => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray8004c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              10,
            ),
          ),
        ],
      );
}
