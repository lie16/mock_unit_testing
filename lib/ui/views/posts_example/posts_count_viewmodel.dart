import 'package:mock_unit_testing/app/locator.dart';
import 'package:mock_unit_testing/services/posts_service.dart';
import 'package:stacked/stacked.dart';

class PostsCountViewModel extends BaseViewModel {
  int get postsCount => locator<PostsService>().posts.length;
}
