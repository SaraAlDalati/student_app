class ExamsParModel {
  int? id;
  int? gradeCourseId;
  String? startAt;
  String? duartion;
  String? date;
  String? type;
  String? courseName;

  ExamsParModel(
      {this.id,
      this.gradeCourseId,
      this.startAt,
      this.duartion,
      this.date,
      this.type,
      this.courseName});

  ExamsParModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gradeCourseId = json['grade_course_id'];
    startAt = json['start_at'];
    duartion = json['duartion'];
    date = json['date'];
    type = json['type'];
    courseName = json['course_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['grade_course_id'] = this.gradeCourseId;
    data['start_at'] = this.startAt;
    data['duartion'] = this.duartion;
    data['date'] = this.date;
    data['type'] = this.type;
    data['course_name'] = this.courseName;
    return data;
  }
}
