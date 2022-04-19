import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:garden/app/app.dart';
import 'package:garden/backend/backend.dart';
import 'package:garden/backend/provider.dart';

void mainCommon() {
  FlutterError.onError = (error) {
    log(
      error.exceptionAsString(),
      stackTrace: error.stack,
    );
  };

  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      WidgetsBinding.instance!.renderView.automaticSystemUiAdjustment = false;

      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
      );

      final backend = await AppBackend.init();

      await BlocOverrides.runZoned(
        () async => runApp(
          BackendProvider(
            backend: backend,
            child: const App(),
          ),
        ),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stack) {
      log(
        error.toString(),
        stackTrace: stack,
      );
    },
  );
}

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
