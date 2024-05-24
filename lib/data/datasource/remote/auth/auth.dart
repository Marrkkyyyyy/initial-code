import '../../../../core/class/crud.dart';

class AuthData {
  Crud crud;
  AuthData(this.crud);

  // register(
  //   String firstName,
  //   String lastName,
  //   String email,
  //   String password,
  // ) async {
  //   var response = await crud.postData("AppLink.register", {
  //     "firstName": firstName,
  //     "lastName": lastName,
  //     "email": email,
  //     "password": password,
  //   });

  //   return response.fold((l) => l, (r) => r);
  // }

  login(
    String email,
    String password,
  ) async {
    var response = await crud.postData("AppLink.login", {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
