import 'package:mock_unit_testing/app/locator.dart';
import 'package:mock_unit_testing/datamodels/post.dart';
import 'package:mock_unit_testing/services/api.dart';
import 'package:mock_unit_testing/services/posts_service.dart';
import 'package:stacked/stacked.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  final _postsService = locator<PostsService>();

  @override
  Future<List<Post>> futureToRun() => _postsService.getPostsForUser(3);
}
