import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(margin: const EdgeInsets.only(top: 10)),
          elevatedButton()
        ],
      ),
    );
  }
}

Widget emailField() {
   return StreamBuilder(
        stream: bloc.emailController,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: bloc.changeEmail,
              decoration: InputDecoration(
                  hintText: 'email@exemplo.com',
                  labelText: 'E-Mail',
                  errorText: snapshot.error.toString(),
              )
          );
        },
   );
}

Widget passwordField() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    return TextField(
      obscureText: true,
      onChanged: bloc.changePassword,
      decoration: InputDecoration(
        labelText: 'Senha',
        errorText: snapshot.error.toString(),
       ),
      );
    },
  );
}

Widget elevatedButton() {
  return ElevatedButton(onPressed: () {}, child: Text('Login'));
}
