import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_plant/screen/explorer_screen.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const users= const {
  'dribb@gmail.com':'12345',
  'hunter@gmail.com' : 'hunter'
};

class LoginPage extends  StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  Duration get loginTime => Duration(milliseconds:  2250);

  Future<String?> _loginUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  FlutterLogin(
      title: 'shoPlant',
      onLogin: _loginUser,
      onSignup: _loginUser,

        loginProviders: [
          LoginProvider(
            icon: FontAwesomeIcons.google, 
            callback: () async {
              print('start google sign in');
              await Future.delayed(loginTime);
              print('stop google sign in');              
              return null;
            }),
              LoginProvider(
            icon: FontAwesomeIcons.facebookF,
            callback: () async {            
              print('start facebook sign in');
              await Future.delayed(loginTime);
              print('stop facebook sign in');              
              return null;
            },
          ),
             LoginProvider(
            icon: FontAwesomeIcons.twitter,
            callback: () async {         
              print('start twitter sign in');
              await Future.delayed(loginTime);         
              print('stop twitter sign in');              
              return null;
            },
          ),
        ],
      onSubmitAnimationCompleted: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => ExplorerScreen(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
    
  }
}