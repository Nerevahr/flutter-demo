import 'package:flutter/cupertino.dart';

class HomePageViewModel extends ChangeNotifier {

  final String _title = 'Flutter Demo';

  int _counter = 0;

  get getTitle => _title;

  get getCounter => _counter;

  void incrementCounter() {

      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      notifyListeners();
  }

}