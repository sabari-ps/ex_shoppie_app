import 'package:exshoppie_app/config/routes.dart';
import 'package:exshoppie_app/controllers/routes_controller.dart';
import 'package:exshoppie_app/controllers/storage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final routesCtrl = Get.put(RoutesController());
final storageCtrl = Get.put(StorageController());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  routesCtrl.toSplashScreen();
  await storageCtrl.initStorage();
  runApp(const ExShoppieApp());
}

class ExShoppieApp extends StatelessWidget {
  const ExShoppieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      initialRoute: '/splash',
      getPages: appRoutes,
    );
  }
}
