import 'package:mock_unit_testing/app/locator.dart';
import 'package:mock_unit_testing/datamodels/comment.dart';
import 'package:mock_unit_testing/services/api.dart';
import 'package:stacked/stacked.dart';

class CommentsViewModel extends FutureViewModel<List<Comment>> {
  final int postId;
  CommentsViewModel(this.postId);

  @override
  Future<List<Comment>> futureToRun() =>
      locator<Api>().getCommentsForPost(postId);
}
