import 'package:firebase_auth/firebase_auth.dart';
import 'package:xchat/modal/user.dart' as UserModal;

//await Firebase.initializeApp();

class AuthMethods {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  ///CONDITION ? TRUE:FALSE
  UserModal.MyUser _userFromFirebaseUser(User user) {
    return user != null ? UserModal.MyUser(userId: user.uid):null;
  }
  ///SIGNIN OPTIONS
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
    } catch (e) {
      print(e);
    }
  }
  ///SIGNUP OPTIONS
  Future sgnUpWithmailandPas(String email,String password)async{
    try{
      UserCredential result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User firebaseUser =result.user;
      return _userFromFirebaseUser(firebaseUser);
    }catch(e){
      print(e);
    }
    
  }
  Future resetPass(String email){
    try{
      return _auth.sendPasswordResetEmail(email: email);
    }catch(e){
      print(e);
    }
  }
  Future signOut(){
    try{
      return _auth.signOut();

    }catch(e){

    }
  }
}