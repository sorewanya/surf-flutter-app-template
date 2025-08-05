import 'package:dio/dio.dart';
import 'package:flutter_template/core/architecture/domain/entity/failure.dart';

/// {@template api_failure.class}
/// API error.
/// {@endtemplate}
base class ApiFailure extends Failure<DioException> {
  /// Special error status code parsed from the response body.
  /// Special status codes are described below and are checked through getters.
  final int? statusCode;

  /// Original error status code from [DioException].
  final int? responseBodyCode;

  /// Message.
  final String? message;

  /// {@macro api_failure.class}
  const ApiFailure({
    required super.original,
    required super.trace,
    this.statusCode,
    this.responseBodyCode,
    this.message,
  });
}

/// {@template timeout_failure.class}
/// TimeoutException.
/// {@endtemplate}
final class TimeoutFailure extends ApiFailure {
  /// {@macro timeout_failure.class}
  const TimeoutFailure({
    required super.original,
    required super.trace,
    super.statusCode,
    super.message,
  });
}
