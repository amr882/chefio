import 'package:chefio/chefio_app.dart';
import 'package:chefio/core/routing/app_router.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => ChefioApp(appRouter: AppRouter()),
      enabled: true,
    ),
  );
}
