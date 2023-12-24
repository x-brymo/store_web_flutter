import 'package:flutter/material.dart';
import 'package:store_web_flutter/presentation/rezilla_real_estate_homepage_mobile_screen/rezilla_real_estate_homepage_mobile_screen.dart';
//import 'package:web_app_flutter_real_estate/presentation/rezilla_real_estate_homepage_mobile_screen/rezilla_real_estate_homepage_mobile_screen.dart';

class AppRoutes {
  static const String rezillaRealEstateHomepageMobileScreen =
      '/rezilla_real_estate_homepage_mobile_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        rezillaRealEstateHomepageMobileScreen:
            RezillaRealEstateHomepageMobileScreen.builder,
        initialRoute: RezillaRealEstateHomepageMobileScreen.builder
      };
}
