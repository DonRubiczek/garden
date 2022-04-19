import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:garden/app/app.dart';
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:garden/home/home_page.dart';
import 'package:mocktail/mocktail.dart';

import '../helpers/pump_app.dart';
import '../helpers/resources.dart';

class FakeHomeEvent extends Fake implements HomeEvent {}

class FakeHomeState extends Fake implements HomeState {}

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

extension on WidgetTester {
  Future<void>? pumpHomeView({
    required HomeBloc bloc,
  }) {
    return pumpApp(
      const App(),
      homeBloc: bloc,
    );
  }
}

void main() {
  setUpAll(() {
    registerFallbackValue(
      FakeHomeEvent(),
    );
    registerFallbackValue(
      FakeHomeState(),
    );
  });
  group('App', () {
    late HomeBloc bloc;

    setUp(
      () {
        bloc = MockHomeBloc();
        whenListen(
          bloc,
          Stream.fromIterable(
            [
              HomeState.initialized(
                plants: Resources.getPlantList().take(10).toList(),
                pageKey: 0,
              )
            ],
          ),
          initialState: HomeState.initialized(
            plants: Resources.getPlantList().take(10).toList(),
            pageKey: 0,
          ),
        );
      },
    );
    testWidgets('renders HomeView', (tester) async {
      await tester.pumpHomeView(bloc: bloc);
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
