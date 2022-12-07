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
  RxList<String> firstText = <String>[
    'History, Cultural',
    'Sea Beatch, Natural',
    'Jungle, Natural',
    'Tree, Natural',
    'Great Blue, Natural'
  ].obs;
  RxList<String> tourNumber = <String>[
    '2 Tours in Asia',
    '1 Tours',
    '3 Tours in Asia',
    '4 Tours in Asia',
    '5 Tours in Asia'
  ].obs;
  RxList<String> personNumber =
      <String>['2 Person', '1 Person', '3 Person', '4 Person', '5 Person'].obs;
  RxList<int> dollar = <int>[60, 145, 50, 100, 40].obs;
  RxList<String> imagesBasket = <String>[].obs;
  RxList<String> placeNamesBasket = <String>[].obs;
  RxList<int> dollarBasket = <int>[].obs;
}
