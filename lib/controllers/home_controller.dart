import 'package:get/get.dart';

class HomeController extends GetxController {
   var isActive = false.obs;

  void toggleWishlist() {
    isActive.value = !isActive.value;
  }
  
}
