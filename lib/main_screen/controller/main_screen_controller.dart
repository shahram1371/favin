import 'package:get/state_manager.dart';

class MainScreenController extends GetxController {
  RxList<String> images =
      <String>['first', 'second', 'thrid', 'four', 'five'].obs;
  RxList<String> placeNames = <String>[
    'The Grand Canyon',
    'Bali Tourism',
    'Costa Rica Tourism',
    'Freshwater Lake',
    'Great Blue Hole'
  ].obs;
  RxList<int> dollar = <int>[60, 145, 50, 100, 40].obs;
}
