import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class authenticate{

  final FirebaseAuth _auth=FirebaseAuth.instance;

  //signIn anom
  Future signInAnom() async
  {
  try{
  UserCredential result= await _auth.signInAnonymously();
  User user = result.user;
  return user;
  }
  catch(e){
    print(e.toString());
    return null;
  }
  }

  //signIn with email and password
  Future signInWithEmailAndPassword(String _emailController,String _passwordController) async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: _emailController,
        password: _passwordController,
      )).user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
}
  //register with email and password

  Future register(String _emailController,String _passwordController) async {
    try {
    final User user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController,
      password: _passwordController,
    ))
        .user;
     return user;
    } catch (e) {
     return null;
    }
  }

 //sign out


}