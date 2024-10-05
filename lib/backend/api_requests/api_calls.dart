import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ZohoSIgn Group Code

class ZohoSIgnGroup {
  static String getBaseUrl() => 'https://accounts.zoho.in/oauth';
  static Map<String, String> headers = {};
  static PostSignCall postSignCall = PostSignCall();
}

class PostSignCall {
  Future<ApiCallResponse> call({
    String? refreshToken = '',
    String? clientId = '',
    String? clientSecret = '',
    String? redirectUri = '',
    String? grantType = '',
  }) async {
    final baseUrl = ZohoSIgnGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PostSign',
      apiUrl: '$baseUrl/v2/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'grant_type': grantType,
        'redirect_uri': redirectUri,
        'client_secret': clientSecret,
        'client_id': clientId,
        'refresh_token': refreshToken,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? accesstoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

/// End ZohoSIgn Group Code

/// Start ZohoSignGet Group Code

class ZohoSignGetGroup {
  static String getBaseUrl() => 'https://sign.zoho.in/api/v1';
  static Map<String, String> headers = {};
  static TemplatesCall templatesCall = TemplatesCall();
}

class TemplatesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ZohoSignGetGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'templates',
      apiUrl: '$baseUrl/templates',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Zoho-oauthtoken 1000.b14a290b3ce405562b80d2adbc65a61b.f4cdbf335873d6728691e1015e63b13a',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ZohoSignGet Group Code

/// Start Elastic Mail Group Code

class ElasticMailGroup {
  static String getBaseUrl() => 'https://api.elasticemail.com';
  static Map<String, String> headers = {
    'Authentication':
        'X-ElasticEmail-B9618ACE852D08CB6EE2EE7F4C5E6F81DF215ED357964F5590CF366A88F007C4EB9CE1A3163DEC05DF944903DE7A49C8',
  };
}

/// End Elastic Mail Group Code

class StarWarsCharactersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Star Wars Characters',
      apiUrl: 'https://swapi.dev/api/people',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Products',
      apiUrl: 'https://dummyjson.com/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
  static List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? image(dynamic response) => getJsonField(
        response,
        r'''$.products[:].images''',
        true,
      ) as List?;
}

class ImdbCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'imdb',
      apiUrl: 'https://imdb-top-100-movies.p.rapidapi.com',
      callType: ApiCallType.GET,
      headers: {
        'x-rapidapi-host': 'imdb-top-100-movies.p.rapidapi.com',
        'x-rapidapi-key': '39464eb359msh16885fb8f92f299p1488f8jsn31eabdf70612',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostTestCall {
  static Future<ApiCallResponse> call({
    String? person = '',
    String? item = '',
    double? price,
    int? quantity,
    double? total,
    String? createdAt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PostTest',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:F5R25bY5/purchases',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'person': person,
        'quantity': quantity,
        'item': item,
        'price': price,
        'total': total,
        'createdAt': createdAt,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? person(dynamic response) => (getJsonField(
        response,
        r'''$[:].person''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? item(dynamic response) => (getJsonField(
        response,
        r'''$[:].item''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? quantity(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? total(dynamic response) => (getJsonField(
        response,
        r'''$[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetPurchaseCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetPurchase',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:F5R25bY5/purchases',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? person(dynamic response) => (getJsonField(
        response,
        r'''$[:].person''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? quantity(dynamic response) => (getJsonField(
        response,
        r'''$[:].quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PUTTestCall {
  static Future<ApiCallResponse> call({
    int? id = 0,
    String? createdAt = '',
    String? person = '',
    String? item = '',
    double? price,
    int? quantity,
    double? total,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PUTTest',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:F5R25bY5/TestPut',
      callType: ApiCallType.PUT,
      headers: {},
      params: {
        'id': id,
        'person': person,
        'created_at': createdAt,
        'item': item,
        'price': price,
        'total': total,
        'quantity': quantity,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ZohoTestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ZohoTest',
      apiUrl: 'https://accounts.zoho.in/oauth/v2',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDocListZSCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetDocListZS',
      apiUrl: 'https://sign.zoho.in/api/v1/requests',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Zoho-oauthtoken 1000.0eb991008d2ea356c65f89c1f71346e0.3967bd448d7c421272391d65c55ea005',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CalenderCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'calender',
      apiUrl: 'https://www.googleapis.com/auth/calendar',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
