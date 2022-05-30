// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/connectivity/connectivity_cubit.dart' as _i6;
import '../../../domain/connectivity/interface/i_connectivity.dart' as _i4;
import '../../../infrastructure/connectivity/connectivity_service.dart' as _i5;
import 'register_injectable_module.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i3.Connectivity>(() => registerModule.connectivity,
      preResolve: true);
  gh.lazySingleton<_i4.IConnectivityService>(
      () => _i5.ConnectivityService(connectivity: get<_i3.Connectivity>()));
  gh.factory<_i6.ConnectivityCubit>(
      () => _i6.ConnectivityCubit(get<_i4.IConnectivityService>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}
