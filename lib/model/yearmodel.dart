class YearModel {
  String? year;

  YearModel(data, {this.year});

  YearModel.fromJson(Map<String, dynamic> json) {
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    return data;
  }
}
