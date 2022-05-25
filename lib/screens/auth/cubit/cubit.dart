import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:qazonamozlari/screens/auth/state/auth_state.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit():super(AuthComplete());

  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  TextEditingController usernameController= TextEditingController();
  
}