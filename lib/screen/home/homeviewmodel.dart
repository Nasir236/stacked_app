import 'package:stacked/stacked.dart';
import 'package:stacked_app/screen/service/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  CounterService counterService = CounterService();

  int get counter => counterService.counter;

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }
}
