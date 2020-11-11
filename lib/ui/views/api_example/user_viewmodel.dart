import 'package:mock_unit_testing/app/locator.dart';
import 'package:mock_unit_testing/datamodels/user.dart';
import 'package:mock_unit_testing/services/api.dart';
import 'package:stacked/stacked.dart';

class UserViewModel extends FutureViewModel<User> {
  final int userId;
  UserViewModel(this.userId);

  @override
  Future<User> futureToRun() => locator<Api>().getUserProfile(userId);
}
