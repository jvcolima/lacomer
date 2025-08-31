import 'package:get/get.dart';

class RegisterController extends GetxController {
  var name = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  void register() {
    if (name.value.isEmpty ||
        email.value.isEmpty ||
        password.value.isEmpty ||
        confirmPassword.value.isEmpty) {
      Get.snackbar("Error", "Todos los campos son obligatorios",
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    if (password.value != confirmPassword.value) {
      Get.snackbar("Error", "Las contraseñas no coinciden",
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    // Aquí llamas tu API real
    Get.snackbar("Éxito", "Registro exitoso",
        snackPosition: SnackPosition.BOTTOM);

    // Después de registrarse, regresar al login
    Get.offAllNamed('/login');
  }
}
