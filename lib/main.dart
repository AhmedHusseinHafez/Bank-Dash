import 'package:bank_dash/src/core/resources/bloc_observer.dart';
import 'package:bank_dash/src/core/resources/injection.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  initGetIt();

  Future.wait([
    // windowManager.ensureInitialized()

    // MyLocalization.load(const Locale.fromSubtags(languageCode: 'ar')),
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ])
  ]).then((_) {
    if (kDebugMode) {
      Bloc.observer = AppObserver();
    }
    // windowManager.setMinimumSize(const Size(500, 1000.0)); // Minimum breakpoint
    runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => MyApp(),
      ),
    );
  });
}
