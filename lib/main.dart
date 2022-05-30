import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greenline_admin/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'core/util/dependencey_injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await Hive.initFlutter();
  // Hive.registerAdapter<CachedUser>(CachedUserAdapter());
  // await Hive.openBox<CachedUser>('user');
  // FlutterDownloader.initialize(debug: false);
  configureDependencies(Environment.prod);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.transparent));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const GreenlineApp());
  });
}
