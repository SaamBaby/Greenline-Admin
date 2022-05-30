import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:greenline_admin/domain/connectivity/failure/connectivity_failure.dart';
import 'package:greenline_admin/domain/connectivity/interface/i_connectivity.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IConnectivityService)
class ConnectivityService extends IConnectivityService {
  final Connectivity connectivity;

  ConnectivityService({required this.connectivity});
  @override
  StreamSubscription<ConnectivityResult> checkConnectivity()  {
    return connectivity.onConnectivityChanged.listen((result) => result);
  }
}
