import 'package:app_la_comer/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Configuración de pantalla completa
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [], // Oculta ambas barras: status bar y navigation bar
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'La Comer App',
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
        GetPage(name: '/home', page: () => HomePage()),
      ],
    );
  }
}
