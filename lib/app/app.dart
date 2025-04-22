import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_app/screen/service/counter_service.dart';

@StackedApp(routes: [], dependencies: [Singleton(classType: CounterService)])
class App {}
