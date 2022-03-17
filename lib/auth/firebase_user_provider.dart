import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HealthCareApplicationFirebaseUser {
  HealthCareApplicationFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

HealthCareApplicationFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HealthCareApplicationFirebaseUser>
    healthCareApplicationFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HealthCareApplicationFirebaseUser>(
            (user) => currentUser = HealthCareApplicationFirebaseUser(user));
