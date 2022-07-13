class OrderScreenRequest {
  OrderScreenRequest({
    required this.apikey,
    this.pagenumber,
  });

  String apikey;
  int? pagenumber;

  Map<String, String> getHeader() {
    return {
      'APIKEY': apikey,
      'PAGENUMBER': pagenumber.toString() != null ? pagenumber.toString() : " ",
    };
  }

  Map<String, String> toMap() {
    return {};
  }
}
