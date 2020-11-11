// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:mock_unit_testing/services/api.dart';
import 'package:mock_unit_testing/system/app_database.dart';
import 'package:mock_unit_testing/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:mock_unit_testing/services/third_party_services_module.dart';
import 'package:mock_unit_testing/services/media_service.dart';
import 'package:mock_unit_testing/services/permissions_service.dart';
import 'package:mock_unit_testing/services/posts_service.dart';
import 'package:mock_unit_testing/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  g.registerLazySingleton<Api>(() => Api());
  g.registerLazySingleton<AppDatabase>(() => AppDatabase());
  g.registerLazySingleton<CounterService>(() => CounterService());
  g.registerLazySingleton<DialogService>(
      () => thirdPartyServicesModule.dialogService);
  g.registerLazySingleton<MediaService>(() => MediaService());
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  g.registerLazySingleton<PermissionsService>(() => PermissionsService());
  g.registerLazySingleton<PostsService>(() => PostsService());
  g.registerLazySingleton<SharedPreferencesService>(
      () => SharedPreferencesService());
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
