part of androidpublisher_v1_api_client;

class PurchasesResource extends Resource {

  PurchasesResource(Client client) : super(client) {
  }

  /**
   * Cancels a user's subscription purchase. The subscription remains valid until its expiration time.
   *
   * [packageName] - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
   *
   * [subscriptionId] - The purchased subscription ID (for example, 'monthly001').
   *
   * [token] - The token provided to the user's device when the subscription was purchased.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> cancel(String packageName, String subscriptionId, String token, {Map optParams}) {
    var completer = new Completer();
    var url = "{packageName}/subscriptions/{subscriptionId}/purchases/{token}/cancel";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (token == null) paramErrors.add("token is required");
    if (token != null) urlParams["token"] = token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Checks whether a user's subscription purchase is valid and returns its expiry time.
   *
   * [packageName] - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
   *
   * [subscriptionId] - The purchased subscription ID (for example, 'monthly001').
   *
   * [token] - The token provided to the user's device when the subscription was purchased.
   *
   * [optParams] - Additional query parameters
   */
  Future<SubscriptionPurchase> get(String packageName, String subscriptionId, String token, {Map optParams}) {
    var completer = new Completer();
    var url = "{packageName}/subscriptions/{subscriptionId}/purchases/{token}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (token == null) paramErrors.add("token is required");
    if (token != null) urlParams["token"] = token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SubscriptionPurchase.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

