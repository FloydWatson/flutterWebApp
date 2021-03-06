import 'package:get_it/get_it.dart';
import 'package:webapp/services/nav_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavService());
}