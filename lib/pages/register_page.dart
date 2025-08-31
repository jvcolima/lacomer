import 'package:app_la_comer/components/styles.dart';
import 'package:app_la_comer/pages/home_page.dart';
import 'package:app_la_comer/pages/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/register_controller.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => {
          Get.off(
                          () => LoginPage(),
                          transition: Transition.zoom,
                          duration: Duration(milliseconds: 1200),
                        )

          },
          
          //Get.back(), // Regresa a la página anterior (login)
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: Column(
              children: [
                // Logo
                Image.asset(
                  "assets/isotipo_login.png",
                  height: size.height * 0.15,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: size.height * 0.02),

                // Título
                Text(
                  "Crear Cuenta",
                  style: TextStyle(
                    fontSize: size.width * 0.08,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  ),
                ),
                SizedBox(height: size.height * 0.03),

                // Nombre
                TextField(
                  onChanged: (v) => controller.name.value = v,
                  decoration: _inputStyle("Nombre completo", Icons.person),
                ),
                SizedBox(height: size.height * 0.02),

                // Correo
                TextField(
                  onChanged: (v) => controller.email.value = v,
                  decoration:
                      _inputStyle("Correo electrónico", Icons.email_outlined),
                ),
                SizedBox(height: size.height * 0.02),

                // Contraseña
                TextField(
                  obscureText: true,
                  onChanged: (v) => controller.password.value = v,
                  decoration: _inputStyle("Contraseña", Icons.lock_outline),
                ),
                SizedBox(height: size.height * 0.02),

                // Confirmar contraseña
                TextField(
                  obscureText: true,
                  onChanged: (v) => controller.confirmPassword.value = v,
                  decoration: _inputStyle("Confirmar contraseña", Icons.lock),
                ),
                SizedBox(height: size.height * 0.03),

                // Botón registro
                FractionallySizedBox(
                  widthFactor: 0.9,
                  child: ElevatedButton(
                    onPressed: controller.register,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Registrarse",
                      style: TextStyle(
                        fontSize: size.width * 0.045,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),

                // Link a login
                GestureDetector(
                  onTap: () => {
                  Get.off(
                          () => LoginPage(),
                          transition: Transition.zoom,
                          duration: Duration(milliseconds: 1200),
                        )

                  },
                  
                  //Get.offAllNamed('/login'),
                  child: Text.rich(
                    TextSpan(
                      text: "¿Ya tienes cuenta? ",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: size.width * 0.04,
                      ),
                      children: [
                        TextSpan(
                          text: "Inicia sesión",
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _inputStyle(String hint, IconData icon) {
    return InputDecoration(
      prefixIcon: Icon(icon, color: primaryColor),
      hintText: hint,
      filled: true,
      fillColor: Colors.orange.shade50,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}
