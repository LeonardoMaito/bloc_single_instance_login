import 'dart:async';

class Validators {

  final emailValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(email.contains('@')){
          sink.add(email);
      }else{
        sink.addError('E-Mail Inválido');
      }
    }
  );

  final passwordValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      if(password.length > 3){
        sink.add(password);
      } else{
        sink.addError('Senha precisa conter mais de 3 caracteres');
      }
    }
  );

}