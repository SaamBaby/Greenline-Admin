import 'package:freezed_annotation/freezed_annotation.dart';
part 'connectivity_failure.freezed.dart';

@freezed
class ConnectivityFailure with _$ConnectivityFailure {
  const factory ConnectivityFailure.serverError() = ServerError;
  const factory ConnectivityFailure.unexpected() = Unexpected;
}
