class MarksModel {
  int? id;
  int? studentId;
  int? gradeCourseId;
  String? year;
  int? firstTermScore;
  int? secondTermScore;
  int? finalScore;
  int? hasFailed;
  GradeCourse? gradeCourse;

  MarksModel(
      {this.id,
      this.studentId,
      this.gradeCourseId,
      this.year,
      this.firstTermScore,
      this.secondTermScore,
      this.finalScore,
      this.hasFailed,
      this.gradeCourse});

  MarksModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    studentId = json['student_id'];
    gradeCourseId = json['grade_course_id'];
    year = json['year'];
    firstTermScore = json['first_term_score'];
    secondTermScore = json['second_term_score'];
    finalScore = json['final_score'];
    hasFailed = json['has_failed'];
    gradeCourse = json['grade_course'] != null
        ? new GradeCourse.fromJson(json['grade_course'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['student_id'] = this.studentId;
    data['grade_course_id'] = this.gradeCourseId;
    data['year'] = this.year;
    data['first_term_score'] = this.firstTermScore;
    data['second_term_score'] = this.secondTermScore;
    data['final_score'] = this.finalScore;
    data['has_failed'] = this.hasFailed;
    if (this.gradeCourse != null) {
      data['grade_course'] = this.gradeCourse!.toJson();
    }
    return data;
  }
}

class GradeCourse {
  int? id;
  int? courseId;
  Course? course;

  GradeCourse({this.id, this.courseId, this.course});

  GradeCourse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseId = json['course_id'];
    course =
        json['course'] != null ? new Course.fromJson(json['course']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['course_id'] = this.courseId;
    if (this.course != null) {
      data['course'] = this.course!.toJson();
    }
    return data;
  }
}

class Course {
  int? id;
  String? name;

  Course({this.id, this.name});

  Course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
