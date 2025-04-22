import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/screen/service/counter_service.dart'
    show CounterService;

class ProfileViewModel extends BaseViewModel {
  CounterService counterService2 = locator<CounterService>();

  int get counter => counterService2.counter;

  addValue() {
    counterService2.addCounterValue();
    rebuildUi();
  }
}
