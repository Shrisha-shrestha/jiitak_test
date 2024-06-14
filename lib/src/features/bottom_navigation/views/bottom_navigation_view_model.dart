import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  final RxInt _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  set currentIndex(int val) {
    _currentIndex.value = val;
    update();
  }
}
