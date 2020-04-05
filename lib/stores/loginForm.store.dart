import 'package:mobx/mobx.dart';

part 'loginForm.store.g.dart';

class LoginFormStore = _LoginFormStore with _$LoginFormStore;

abstract class _LoginFormStore with Store {

  @observable
  String email;

  @observable
  String password;


  @action
  void setEmail(String value) {
    this.email = value;
  }

  @action
  void setPassword(String value) {
    this.password = value;
  }

  @action
  String validateEmail(String value) {
    final regExp = RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return regExp.hasMatch(value) ? null : 'Not a valid Email';
  }

  @action
  String validatePassword(String value) {
    return value == null || value.isEmpty ? 'Password can\'t be blank' : null;   
  }

}