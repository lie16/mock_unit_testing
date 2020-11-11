import 'package:flutter/material.dart';
import 'package:mock_unit_testing/app/locator.dart';
import 'package:mock_unit_testing/ui/views/image_picker/image_picker_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart' as auto_router;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ImagePickerView(),
      // initialRoute: Routes.startupViewRoute,
      onGenerateRoute: auto_router.Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
