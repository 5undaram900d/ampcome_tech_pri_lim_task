
import 'package:flutter/foundation.dart';

final List<String> tempArrayFinal = [];

class FavouriteItemProvider with ChangeNotifier{

  List<String> get tempArray => tempArrayFinal;

  void addItem(String value){
    tempArray.add(value);
    notifyListeners();
  }

  void removeItem(String value){
    tempArray.remove(value);
    notifyListeners();
  }

}