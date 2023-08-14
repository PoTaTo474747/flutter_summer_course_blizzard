import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AuthMethods{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  final FirebaseFirestore _firestore= FirebaseFirestore.instance;
  Future<String> signUpUser({
    required String phoneNumber,
    required String password,
    required String username,
}) async{
    String result='Some error occured';
    try{
      if (
      phoneNumber.isNotEmpty||
          password.isNotEmpty||
          username.isNotEmpty
      ){
        UserCredential credential= await _auth.createUserWithEmailAndPassword(
          email: phoneNumber, password: password
        );
        _firestore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid': credential.user!.uid,
          'email':phoneNumber,
          'following':[],
          'followers':[]
        });
        result= 'success';
      }
    } catch(err){
      result= err.toString();
    }
    return result;
  }
}