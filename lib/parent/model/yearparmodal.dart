class YearParModel {
  String? year;

  YearParModel(data, {this.year});

  YearParModel.fromJson(Map<String, dynamic> json) {
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    return data;
  }
}
