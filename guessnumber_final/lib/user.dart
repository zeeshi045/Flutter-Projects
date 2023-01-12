import 'accountmodel.dart';
import 'repository.dart';
class UserServices {
  late Repository _repository;
  UserServices() {
    _repository = Repository();
  }
  SaveUserAccount(ModelUser user) async {
    return await _repository.insertData('user', user.UserMap());
  }
}
