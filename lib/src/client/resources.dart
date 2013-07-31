part of androidpublisher_v1_api;

class PurchasesResource_ {

  final Client _client;

  PurchasesResource_(Client client) :
      _client = client;

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
  async.Future<core.Map> cancel(core.String packageName, core.String subscriptionId, core.String token, {core.Map optParams}) {
    var url = "{packageName}/subscriptions/{subscriptionId}/purchases/{token}/cancel";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<SubscriptionPurchase> get(core.String packageName, core.String subscriptionId, core.String token, {core.Map optParams}) {
    var url = "{packageName}/subscriptions/{subscriptionId}/purchases/{token}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SubscriptionPurchase.fromJson(data));
  }
}

