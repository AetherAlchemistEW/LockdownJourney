import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LockdownJourneyFirebaseUser {
  LockdownJourneyFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

LockdownJourneyFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LockdownJourneyFirebaseUser> lockdownJourneyFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LockdownJourneyFirebaseUser>(
            (user) => currentUser = LockdownJourneyFirebaseUser(user));
