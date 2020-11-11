import 'package:injectable/injectable.dart';
import 'package:mock_unit_testing/datamodels/address.dart';

@lazySingleton
class AppDatabase {
  Future<Address> getCurrentAddress() {}
}
