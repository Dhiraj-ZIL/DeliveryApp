import 'package:flashquiz_app/core/base/base_cubit.dart';
import 'package:flashquiz_app/core/base/base_state.dart';
import 'package:flashquiz_app/features/auth/cubit/auth_state.dart';
import 'package:injectable/injectable.dart';

import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

@injectable
class AuthCubit extends BaseAsyncCubit<AuthState> {
  // final LocalDatabaseService _databaseService;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthCubit(
    super.baseRepository,
    // this._databaseService,
  ) {
    emit(AsyncValue.data(data: AuthState.initial()));
  }

  // Sign in with Google
  Future<void> signInWithGoogle() async {
    try {
      log("Sign in with Google");
      emit(AsyncValue.data(
          data: state.data!.copyWith(
        isGoogleLoading: true,
        errorMessage: null,
      )));

      // Begin interactive sign-in process
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        // User canceled the sign-in flow
        emit(AsyncValue.data(
            data: state.data!.copyWith(
          isGoogleLoading: false,
        )));
        return;
      }

      // Obtain auth details from request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create new credential for firebase
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the Google credential
      await _auth.signInWithCredential(credential);

      emit(AsyncValue.data(
          data: state.data!.copyWith(
        isGoogleLoading: false,
        status: AuthStatus.authenticated,
      )));
    } catch (e) {
      log('Error signing in with Google: $e');
      emit(AsyncValue.data(
          data: state.data!.copyWith(
        errorMessage: 'Failed to sign in with Google. Please try again.',
        isGoogleLoading: false,
        status: AuthStatus.error,
      )));
    }
  }

  // Sign in anonymously
  Future<void> signInAnonymously() async {
    try {
      emit(AsyncValue.data(
          data: state.data!.copyWith(
        isLoading: true,
        errorMessage: null,
      )));

      // Sign in anonymously with Firebase
      await _auth.signInAnonymously();

      emit(AsyncValue.data(
          data: state.data!.copyWith(
        isLoading: false,
        status: AuthStatus.authenticated,
      )));
    } catch (e) {
      log('Error signing in anonymously: $e');
      emit(AsyncValue.data(
          data: state.data!.copyWith(
        errorMessage: 'Failed to sign in anonymously. Please try again.',
        isLoading: false,
        status: AuthStatus.error,
      )));
    }
  }

  // Get current auth status
  Future<void> checkAuthStatus() async {
    final currentUser = _auth.currentUser;
    if (currentUser != null) {
      emit(AsyncValue.data(
          data: state.data!.copyWith(
        status: AuthStatus.authenticated,
      )));
    } else {
      emit(AsyncValue.data(
          data: state.data!.copyWith(
        status: AuthStatus.unauthenticated,
      )));
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      // Also sign out from Google if signed in with Google
      if (await _googleSignIn.isSignedIn()) {
        await _googleSignIn.signOut();
      }

      emit(AsyncValue.data(
          data: state.data!.copyWith(
        status: AuthStatus.unauthenticated,
      )));
    } catch (e) {
      log('Error signing out: $e');
      emit(AsyncValue.data(
          data: state.data!.copyWith(
        errorMessage: 'Failed to sign out. Please try again.',
        status: AuthStatus.error,
      )));
    }
  }
}
