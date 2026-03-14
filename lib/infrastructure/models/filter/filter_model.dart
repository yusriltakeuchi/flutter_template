
class FilterModel {
  int? page;
  String? q;
  String? type;
  double? latitude;
  double? longitude;
  String? orderDueDate;

  FilterModel({
    this.page,
    this.q,
    this.type,
    this.latitude,
    this.longitude,
    this.orderDueDate,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> params = {};
    if (page != null) params['page'] = page;
    if (q != null) params['q'] = q;
    if (type != null) params['filter[type]'] = type;
    if (latitude != null) params['latitude'] = latitude;
    if (longitude != null) params['longitude'] = longitude;
    if (orderDueDate != null) params['order[due_date]'] = orderDueDate;
    return params;
  }

  /// Add copy with
  FilterModel copyWith({
    String? title,
    bool? isOptions,
    bool? selected,
    int? page,
    String? q,
    String? orderBy,
    int? stockFrom,
    int? stockTo,
  }) {
    return FilterModel(
      page: page ?? this.page,
      q: q ?? this.q,
    );
  }
}