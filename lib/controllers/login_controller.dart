import 'package:app_la_comer/pages/home_page.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  void login() {
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar("Error", "Por favor ingresa tus datos",
          snackPosition: SnackPosition.TOP);
    } else {
      // Aquí va tu lógica real de login
      // Get.snackbar("Éxito", "Inicio de sesión correcto",
      //     snackPosition: SnackPosition.TOP);

      // aquí iría la validación o request al backend
      // si es correcto:
      //Get.offAllNamed('/home'); 
      Get.off(
        () => HomePage(),
        transition: Transition.zoom,
        duration: Duration(milliseconds: 1200),
      );

    }
  }
}
