class MarkSubSecondModel {
  int? id;
  int? studentId;
  int? gradeCourseId;
  String? type;
  int? score;
  String? year;
  String? term;
  String? createdAt;
  String? updatedAt;

  MarkSubSecondModel(
      {this.id,
      this.studentId,
      this.gradeCourseId,
      this.type,
      this.score,
      this.year,
      this.term,
      this.createdAt,
      this.updatedAt});

  MarkSubSecondModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    studentId = json['student_id'];
    gradeCourseId = json['grade_course_id'];
    type = json['type'];
    score = json['score'];
    year = json['year'];
    term = json['term'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['student_id'] = this.studentId;
    data['grade_course_id'] = this.gradeCourseId;
    data['type'] = this.type;
    data['score'] = this.score;
    data['year'] = this.year;
    data['term'] = this.term;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
