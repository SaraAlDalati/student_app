class CoursesParModel {
  int? id;
  String? name;
  String? description;
  String? imagePath;
  Pivot? pivot;

  CoursesParModel(
      {this.id, this.name, this.description, this.imagePath, this.pivot});

  CoursesParModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    imagePath = json['image_path'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image_path'] = this.imagePath;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? gradeId;
  int? courseId;

  Pivot({this.gradeId, this.courseId});

  Pivot.fromJson(Map<String, dynamic> json) {
    gradeId = json['grade_id'];
    courseId = json['course_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['grade_id'] = this.gradeId;
    data['course_id'] = this.courseId;
    return data;
  }
}
