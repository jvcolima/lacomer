import 'package:app_la_comer/components/styles.dart';
import 'package:app_la_comer/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo principal
                Image.asset(
                  "assets/isotipo_login.png",
                  height: size.height * 0.22,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: size.height * 0.03),
                Image.asset(
                  "assets/logotipo.png",
                  height: size.height * 0.06,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: size.height * 0.03),

                // Correo
                TextField(
                  onChanged: (v) => controller.email.value = v,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined, color: primaryColor),
                    hintText: "Correo Electrónico",
                    filled: true,
                    fillColor: primaryColor.withOpacity(0.05),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),

                // Contraseña
                TextField(
                  obscureText: true,
                  onChanged: (v) => controller.password.value = v,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline, color: primaryColor),
                    hintText: "Contraseña",
                    filled: true,
                    fillColor: primaryColor.withOpacity(0.05),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),

                // Botón login
                FractionallySizedBox(
                  widthFactor: 0.9, // ocupa el 90% del ancho
                  child: ElevatedButton(
                    onPressed: controller.login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Iniciar Sesión",
                      style: TextStyle(
                        fontSize: size.width * 0.045,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),

                // Registro
                GestureDetector(
                  onTap: () => {
                  Get.off(
                          () => RegisterPage(),
                          transition: Transition.zoom,
                          duration: Duration(milliseconds: 1200),
                        )
                  },
                  //Get.toNamed('/register'),
                  child: Text.rich(
                    TextSpan(
                      text: "¿No tienes cuenta? ",
                      style: TextStyle(color: primaryColor, fontSize: size.width * 0.04),
                      children: [
                        TextSpan(
                          text: "Regístrate",
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

                // Divider con texto
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey.shade400)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      child: Text(
                        "O inicia sesión con",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.035,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey.shade400)),
                  ],
                ),
                SizedBox(height: size.height * 0.01),

                // Botones sociales
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Image.asset(
                        "assets/facebook.png",
                        height: size.height * 0.08,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Flexible(
                      child: Image.asset(
                        "assets/ios.png",
                        height: size.height * 0.08,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
