import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/screen/service/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  CounterService counterService1 = locator<CounterService>();

  int get counter => counterService1.counter;

  addValue() {
    counterService1.addCounterValue();
    rebuildUi();
  }
}
