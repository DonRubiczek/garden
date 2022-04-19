import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:garden/backend/backend.dart';
import 'package:garden/backend/provider.dart';
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:garden/l10n/l10n.dart';
import 'package:garden/repository/plant_respository.dart';
import 'package:garden/resources/resources.dart';
import 'package:mocktail/mocktail.dart';

class MockBackend extends Mock implements Backend {}

class MockPlantRepository extends Mock implements PlantRepository {}

class MockHomeBloc extends Mock implements HomeBloc {}

class MockResources extends Mock implements Resources {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

extension AppTester on WidgetTester {
  Future<void> pumpApp(
    Widget widgetUnderTest, {
    Backend? backend,
    PlantRepository? plantRepository,
    HomeBloc? homeBloc,
    Resources? resources,
    TargetPlatform? platform,
    NavigatorObserver? navigatorObserver,
  }) async {
    await pumpWidget(
      BackendProvider(
        backend: backend ??
            AppBackend(
              plantRepository: plantRepository ?? MockPlantRepository(),
              homeBloc: homeBloc ?? MockHomeBloc(),
              resources: resources ?? MockResources(),
            ),
        child: MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          home: Theme(
            data: ThemeData(platform: platform),
            child: widgetUnderTest,
          ),
          navigatorObservers: [
            navigatorObserver ?? MockNavigatorObserver(),
          ],
        ),
      ),
    );
    await pump();
  }
}
