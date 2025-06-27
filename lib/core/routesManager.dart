import 'package:flutter/cupertino.dart';
import 'package:movies_app/presentation/Home/HomeView.dart';
import 'package:movies_app/presentation/Login/LoginView.dart';
import 'package:movies_app/presentation/Registration/RegistrationView.dart';

class RoutesManager
{
  static const String home = "/home";
  static const String login = "/login";
  static const String register = "/register";
  static Route? router(RouteSettings settings)
  {
    switch (settings.name)
    {
      case home:
      return  CupertinoPageRoute(builder: (context)=> HomeView());
      case register:
       return CupertinoPageRoute(builder: (context)=>Registerview());
      case login:
        return CupertinoPageRoute(builder: (context)=>Loginview());

    }
    return null;

  }
}
