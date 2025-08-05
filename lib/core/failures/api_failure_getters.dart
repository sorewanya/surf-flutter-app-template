import 'dart:io';

import 'package:flutter_template/core/failures/api_failure.dart';

/// API error statusCode getters
extension ApiFailureGetters on ApiFailure {
  ///
  bool get isInformational => statusCode != null && statusCode! >= 100 && statusCode! < 200;
  bool get isSuccessful => statusCode != null && statusCode! >= 200 && statusCode! < 300;
  bool get isRedirect => statusCode != null && statusCode! >= 300 && statusCode! < 400;
  bool get isClientError => statusCode != null && statusCode! >= 400 && statusCode! < 500;
  bool get isServerError => statusCode != null && statusCode! >= 500 && statusCode! < 600;

  bool get isContinue_ => statusCode == HttpStatus.continue_;
  bool get isSwitchingProtocols => statusCode == HttpStatus.switchingProtocols;
  bool get isProcessing => statusCode == HttpStatus.processing;
  bool get isOk => statusCode == HttpStatus.ok;
  bool get isCreated => statusCode == HttpStatus.created;
  bool get isAccepted => statusCode == HttpStatus.accepted;
  bool get isNonAuthoritativeInformation => statusCode == HttpStatus.nonAuthoritativeInformation;
  bool get isNoContent => statusCode == HttpStatus.noContent;
  bool get isResetContent => statusCode == HttpStatus.resetContent;
  bool get isPartialContent => statusCode == HttpStatus.partialContent;
  bool get isMultiStatus => statusCode == HttpStatus.multiStatus;
  bool get isAlreadyReported => statusCode == HttpStatus.alreadyReported;
  bool get isImUsed => statusCode == HttpStatus.imUsed;
  bool get isMultipleChoices => statusCode == HttpStatus.multipleChoices;
  bool get isMovedPermanently => statusCode == HttpStatus.movedPermanently;
  bool get isFound => statusCode == HttpStatus.found;
  bool get isMovedTemporarily => statusCode == HttpStatus.movedTemporarily; // Common alias for found.
  bool get isSeeOther => statusCode == HttpStatus.seeOther;
  bool get isNotModified => statusCode == HttpStatus.notModified;
  bool get isUseProxy => statusCode == HttpStatus.useProxy;
  bool get isTemporaryRedirect => statusCode == HttpStatus.temporaryRedirect;
  bool get isPermanentRedirect => statusCode == HttpStatus.permanentRedirect;
  bool get isBadRequest => statusCode == HttpStatus.badRequest;
  bool get isUnauthorized => statusCode == HttpStatus.unauthorized;
  bool get isPaymentRequired => statusCode == HttpStatus.paymentRequired;
  bool get isForbidden => statusCode == HttpStatus.forbidden;
  bool get isNotFound => statusCode == HttpStatus.notFound;
  bool get isMethodNotAllowed => statusCode == HttpStatus.methodNotAllowed;
  bool get isNotAcceptable => statusCode == HttpStatus.notAcceptable;
  bool get isProxyAuthenticationRequired => statusCode == HttpStatus.proxyAuthenticationRequired;
  bool get isRequestTimeout => statusCode == HttpStatus.requestTimeout;
  bool get isConflict => statusCode == HttpStatus.conflict;
  bool get isGone => statusCode == HttpStatus.gone;
  bool get isLengthRequired => statusCode == HttpStatus.lengthRequired;
  bool get isPreconditionFailed => statusCode == HttpStatus.preconditionFailed;
  bool get isRequestEntityTooLarge => statusCode == HttpStatus.requestEntityTooLarge;
  bool get isRequestUriTooLong => statusCode == HttpStatus.requestUriTooLong;
  bool get isUnsupportedMediaType => statusCode == HttpStatus.unsupportedMediaType;
  bool get isRequestedRangeNotSatisfiable => statusCode == HttpStatus.requestedRangeNotSatisfiable;
  bool get isExpectationFailed => statusCode == HttpStatus.expectationFailed;
  bool get isMisdirectedRequest => statusCode == HttpStatus.misdirectedRequest;
  bool get isUnprocessableEntity => statusCode == HttpStatus.unprocessableEntity;
  bool get isLocked => statusCode == HttpStatus.locked;
  bool get isFailedDependency => statusCode == HttpStatus.failedDependency;
  bool get isUpgradeRequired => statusCode == HttpStatus.upgradeRequired;
  bool get isPreconditionRequired => statusCode == HttpStatus.preconditionRequired;
  bool get isTooManyRequests => statusCode == HttpStatus.tooManyRequests;
  bool get isRequestHeaderFieldsTooLarge => statusCode == HttpStatus.requestHeaderFieldsTooLarge;
  bool get isConnectionClosedWithoutResponse => statusCode == HttpStatus.connectionClosedWithoutResponse;
  bool get isUnavailableForLegalReasons => statusCode == HttpStatus.unavailableForLegalReasons;
  bool get isClientClosedRequest => statusCode == HttpStatus.clientClosedRequest;
  bool get isInternalServerError => statusCode == HttpStatus.internalServerError;
  bool get isNotImplemented => statusCode == HttpStatus.notImplemented;
  bool get isBadGateway => statusCode == HttpStatus.badGateway;
  bool get isServiceUnavailable => statusCode == HttpStatus.serviceUnavailable;
  bool get isGatewayTimeout => statusCode == HttpStatus.gatewayTimeout;
  bool get isHttpVersionNotSupported => statusCode == HttpStatus.httpVersionNotSupported;
  bool get isVariantAlsoNegotiates => statusCode == HttpStatus.variantAlsoNegotiates;
  bool get isInsufficientStorage => statusCode == HttpStatus.insufficientStorage;
  bool get isLoopDetected => statusCode == HttpStatus.loopDetected;
  bool get isNotExtended => statusCode == HttpStatus.notExtended;
  bool get isNetworkAuthenticationRequired => statusCode == HttpStatus.networkAuthenticationRequired;
  // Client generated status code.
  bool get isNetworkConnectTimeoutError => statusCode == HttpStatus.networkConnectTimeoutError;
}
