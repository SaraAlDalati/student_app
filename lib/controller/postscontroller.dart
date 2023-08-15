import 'package:get/get.dart';
import 'package:student_app/model/postsmodel.dart';
import '../core/ResApiStudent.dart';





class PostsController extends GetxController {
  bool isLoading = true;

  List<PostsToShow> posts = [];

  @override
  void onInit() async {
    await fetchDaysData();

    super.onInit();
  }

  fetchDaysData() async {
    isLoading = true;
    update();

    posts.clear();
    posts = await RestAPIGet.getpoststoshow();

    if (posts.isEmpty) {
      posts = [];
      update();
      return;
    }

    isLoading = false;
    update();
  }
}