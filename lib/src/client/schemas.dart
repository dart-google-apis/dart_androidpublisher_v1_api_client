part of androidpublisher_v1_api;

/** A Purchase resource indicates the status of a user's subscription purchase. */
class SubscriptionPurchase {

  /** Whether the subscription will automatically be renewed when it reaches its current expiry time. */
  core.bool autoRenewing;

  /** Time at which the subscription was granted, in milliseconds since Epoch. */
  core.int initiationTimestampMsec;

  /** This kind represents a subscriptionPurchase object in the androidpublisher service. */
  core.String kind;

  /** Time at which the subscription will expire, in milliseconds since Epoch. */
  core.int validUntilTimestampMsec;

  /** Create new SubscriptionPurchase from JSON data */
  SubscriptionPurchase.fromJson(core.Map json) {
    if (json.containsKey("autoRenewing")) {
      autoRenewing = json["autoRenewing"];
    }
    if (json.containsKey("initiationTimestampMsec")) {
      initiationTimestampMsec = (json["initiationTimestampMsec"] is core.String) ? core.int.parse(json["initiationTimestampMsec"]) : json["initiationTimestampMsec"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("validUntilTimestampMsec")) {
      validUntilTimestampMsec = (json["validUntilTimestampMsec"] is core.String) ? core.int.parse(json["validUntilTimestampMsec"]) : json["validUntilTimestampMsec"];
    }
  }

  /** Create JSON Object for SubscriptionPurchase */
  core.Map toJson() {
    var output = new core.Map();

    if (autoRenewing != null) {
      output["autoRenewing"] = autoRenewing;
    }
    if (initiationTimestampMsec != null) {
      output["initiationTimestampMsec"] = initiationTimestampMsec;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (validUntilTimestampMsec != null) {
      output["validUntilTimestampMsec"] = validUntilTimestampMsec;
    }

    return output;
  }

  /** Return String representation of SubscriptionPurchase */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
