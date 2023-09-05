class Welcome {
  Data data;
  int statusCode;
  String statusMessage;
  DateTime timestamp;

  Welcome({
    required this.data,
    required this.statusCode,
    required this.statusMessage,
    required this.timestamp,
  });

}

class Data {
  List<Site> sites;

  Data({
    required this.sites,
  });

}

class Site {
  String uid;
  String address;
  String city;
  String country;
  String name;
  String zip;
  String state;
  dynamic imageUrl;
  List<Charger> chargers;

  Site({
    required this.uid,
    required this.address,
    required this.city,
    required this.country,
    required this.name,
    required this.zip,
    required this.state,
    required this.imageUrl,
    required this.chargers,
  });

}

class Charger {
  String uid;
  String chargerId;
  List<Evse> evses;
  String imageUrl;
  String isPublic;
  double latitude;
  double longitude;
  bool isFavorite;

  Charger({
    required this.uid,
    required this.chargerId,
    required this.evses,
    required this.imageUrl,
    required this.isPublic,
    required this.latitude,
    required this.longitude,
    required this.isFavorite,
  });

}

class Evse {
  String? evseId;
  String uid;
  List<Connector> connector;
  EvseStatus evseStatus;

  Evse({
    required this.evseId,
    required this.uid,
    required this.connector,
    required this.evseStatus,
  });

}

class Connector {
  String id;
  String type;
  double maxPortPowerInKw;
  dynamic tariff;

  Connector({
    required this.id,
    required this.type,
    required this.maxPortPowerInKw,
    required this.tariff,
  });

}

enum EvseStatus {
  AVAILABLE,
  UNKNOWN
}
