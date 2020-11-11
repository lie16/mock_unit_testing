import 'package:mock_unit_testing/app/locator.dart';
import 'package:mock_unit_testing/datamodels/post.dart';
import 'package:mock_unit_testing/services/api.dart';
import 'package:stacked/stacked.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  final int userId;
  PostsViewModel(this.userId);

  @override
  Future<List<Post>> futureToRun() => locator<Api>().getPostsForUser(userId);
}
