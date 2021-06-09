import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GithubIntegrationBugFirebaseUser {
  GithubIntegrationBugFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

GithubIntegrationBugFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GithubIntegrationBugFirebaseUser>
    githubIntegrationBugFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GithubIntegrationBugFirebaseUser>(
            (user) => currentUser = GithubIntegrationBugFirebaseUser(user));
