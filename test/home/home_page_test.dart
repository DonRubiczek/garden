import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
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
      BlocProvider.value(
        value: bloc,
        child: const HomeView(),
      ),
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

  group(
    'HomeView',
    () {
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

      testWidgets(
        'renders page',
        (tester) async {
          await tester.pumpHomeView(
            bloc: bloc,
          );
          expect(
            find.byType(
              HomeView,
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders home page title - Garden',
        (tester) async {
          await tester.pumpHomeView(
            bloc: bloc,
          );
          expect(
            find.text(
              'Garden',
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders home page subtitle',
        (tester) async {
          await tester.pumpHomeView(
            bloc: bloc,
          );
          expect(
            find.text(
              'Find plant by name',
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders first element on plant list',
        (tester) async {
          await tester.pumpHomeView(
            bloc: bloc,
          );
          expect(
            find.byKey(
              const Key(
                'key1',
              ),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders fifth element on plant list',
        (tester) async {
          await tester.pumpHomeView(
            bloc: bloc,
          );
          expect(
            find.byKey(
              const Key(
                'key5',
              ),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders form',
        (tester) async {
          await tester.pumpHomeView(
            bloc: bloc,
          );
          expect(
            find.byKey(
              const Key(
                'searchPlantByNameFormKey',
              ),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders form field',
        (tester) async {
          await tester.pumpHomeView(
            bloc: bloc,
          );
          expect(
            find.byKey(
              const Key(
                'searchPlantByNameFormFieldKey',
              ),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders add plant button',
        (tester) async {
          await tester.pumpHomeView(
            bloc: bloc,
          );
          expect(
            find.byKey(
              const Key(
                'addPlantButtonKey',
              ),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders last element of plants list',
        (tester) async {
          await tester.pumpHomeView(
            bloc: bloc,
          );
          await tester.drag(
            find.byKey(
              const Key('PagedPlantListViewKey'),
            ),
            const Offset(0, -500),
          );
          await tester.pump();
          expect(
            find.byKey(
              const Key(
                'key10',
              ),
            ),
            findsOneWidget,
          );
        },
      );
    },
  );
}
