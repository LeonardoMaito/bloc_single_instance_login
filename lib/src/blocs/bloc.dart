import 'dart:async';

import 'package:bloc_form_validation/src/blocs/validators.dart';

class Bloc with Validators {

  final _email = StreamController<String>();
  final _password = StreamController<String>();

  //Adicionar dados a Stream
  Stream<String> get emailController => _email.stream.transform(emailValidator);
  Stream<String> get passwordController => _password.stream.transform(passwordValidator);

  //Alterar dados da stream
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose(){
    _email.close();
    _password.close();

  }

}

final bloc = Bloc();