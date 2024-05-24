import 'package:initial_code/core/class/crud.dart';

class UserData {
  Crud crud;
  UserData(this.crud);

  // createNewClass(
  //   String teacherID,
  //   String name,
  //   String code,
  // ) async {
  //   var response = await crud.postData("AppLink.createNewClass", {
  //     "teacherID": teacherID,
  //     "name": name,
  //     "code": code,
  //   });

  //   return response.fold((l) => l, (r) => r);
  // }

  // rejectRequest(
  //   String? requestID,
  // ) async {
  //   var response = await crud.postData("AppLink.rejectRequest", {
  //     "requestID": requestID,
  //   });

  //   return response.fold((l) => l, (r) => r);
  // }
}
