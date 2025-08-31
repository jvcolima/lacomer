import 'package:flutter/material.dart';
import 'package:get/get.dart';


const backgroundColor = Color.fromARGB(255, 243, 243, 243);

  final Color primaryColor = const Color(0xFFF85E11); // naranja
  final Color secondaryColor = const Color(0xFF94BE2C); // verde



centerHeading(val) {
  return Text(
    val,
    textAlign: TextAlign.center,
    style: const TextStyle(
        height: 1.4,
        fontSize: 24,
        fontFamily: 'bold',
        color: Colors.white,
        letterSpacing: 1),
  );
}

centerText(val) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Text(
      val,
      textAlign: TextAlign.center,
      style: const TextStyle(height: 1.5, fontSize: 14, color: Colors.white),
    ),
  );
}

centerBlackText(val) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Text(
      val,
      textAlign: TextAlign.center,
      style: const TextStyle(height: 1.5, fontSize: 16, color: Colors.black),
    ),
  );
}

blackHeading(val) {
  return Text(
    val,
    style:
        const TextStyle(fontSize: 18, fontFamily: 'bold', color: Colors.black),
  );
}

blackHeadingSmall(val) {
  return Container(
    padding: const EdgeInsets.only(bottom: 4),
    child: Text(
      val,
      style: TextStyle(
          fontSize: 16, fontFamily: 'bold', color: Get.theme.colorScheme.onBackground),
    ),
  );
}

boldText(val) {
  return Text(
    val,
    style:
        TextStyle(fontSize: 14, fontFamily: 'bold', color: Get.theme.colorScheme.onBackground),
  );
}

boldTextMenu(val) {
  return Text(
    val,
    style:
        TextStyle(fontSize: 14, fontFamily: 'bold', color: Get.theme.primaryColor),
  );
}


boldTextSize(val, double sizeFont) {
  return Text(
    val,
    style:
        TextStyle(fontSize: sizeFont, fontFamily: 'bold', color: Get.theme.colorScheme.onBackground),
  );
}

boldTextColor(val, Color colorParam) {
  return Text(
    val,
    style:
        TextStyle(fontSize: 14, fontFamily: 'bold', color: colorParam),
  );
}

boldTextSmall(val) {
  return Text(
    val,
    style: TextStyle(
        fontSize: 12, fontFamily: 'medium', color: Get.theme.colorScheme.onBackground),
  );
}

blackText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 14, color: Get.theme.colorScheme.onBackground),
  );
}

blackTextColor(String val, Color textColor) {
  return Text(
    val,
    style: TextStyle(fontSize: 13, color: textColor, fontWeight: FontWeight.bold),
  );
}

greyText(val) {
  return Text(
    val,
    style:  TextStyle(fontSize: 14, color: Get.theme.colorScheme.onBackground),
  );
}

greyTextSmall(val) {
  return Text(
    val,
    style:  TextStyle(fontSize: 12, color: Get.theme.colorScheme.onBackground),
  );
}

appcolorText(val) {
  return Text(
    val,
    style: TextStyle(fontSize: 16, color: Get.theme.colorScheme.primary, fontFamily: 'bold'),
  );
}

textField(icn, hint) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        color: Get.theme.colorScheme.primary,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ],
      ),
      child: Row(
        children: [
          Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: const Offset(0, 2),
                      blurRadius: 8.0),
                ],
              ),
              child: Icon(icn, color: Get.theme.colorScheme.primary)),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              onChanged: (String txt) {},
              style: const TextStyle(
                fontSize: 14,
              ),
              cursorColor: Get.theme.colorScheme.primary,
              decoration: InputDecoration(
                border: InputBorder.none,
                // hintText: hint,
                labelText: hint,
                labelStyle: const TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

imageButton(image, name) {
  return ElevatedButton.icon(
    icon: Image.asset(
      image,
      width: 24,
      height: 24,
    ),
    label: Text(name),
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.black, backgroundColor: Colors.white,
      shadowColor: Colors.black38,
      elevation: 5,
      padding: const EdgeInsets.all(10),
      shape: (RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      )),
    ),
  );
}
