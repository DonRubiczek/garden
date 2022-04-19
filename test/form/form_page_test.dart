import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:garden/form/bloc/form_bloc.dart' as bloc;
import 'package:garden/form/form_page.dart';
import 'package:garden/model/plant_data.dart';
import 'package:garden/resources/resources.dart';
import 'package:mocktail/mocktail.dart';

import '../helpers/pump_app.dart';
import '../helpers/resources.dart' as _testresources;

class FakeFormEvent extends Fake implements bloc.FormEvent {}

class FakeFormState extends Fake implements bloc.FormState {}

class MockFormBloc extends MockBloc<bloc.FormEvent, bloc.FormState>
    implements bloc.FormBloc {}

extension on WidgetTester {
  Future<void>? pumpFormView({
    required bloc.FormBloc bloc,
    required PlantData plantData,
  }) {
    return pumpApp(
      BlocProvider.value(
        value: bloc,
        child: FormView(
          plant: plantData,
        ),
      ),
      resources: Resources(
        plantTypes: _testresources.Resources.getTypes(),
      ),
    );
  }
}

void main() {
  setUpAll(() {
    registerFallbackValue(
      FakeFormEvent(),
    );
    registerFallbackValue(
      FakeFormState(),
    );
  });

  group(
    'FormView',
    () {
      late bloc.FormBloc formBloc;

      setUp(
        () {
          formBloc = MockFormBloc();
          whenListen(
            formBloc,
            Stream.fromIterable(
              [
                const bloc.FormState.initial(),
              ],
            ),
            initialState: const bloc.FormState.initial(),
          );
        },
      );

      testWidgets(
        'renders page',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: _testresources.Resources.getPlant(),
          );
          expect(
            find.byType(
              FormView,
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders form page title - Add plant on plant adding',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: PlantData(name: '', type: '', date: ''),
          );
          expect(
            find.text(
              'Add plant',
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders form page title - Update plant on plant adding',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: _testresources.Resources.getPlant(),
          );
          expect(
            find.text(
              'Update plant',
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders add form page subtitle',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: PlantData(name: '', type: '', date: ''),
          );
          expect(
            find.text(
              'Add plant data',
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders edit form page subtitle',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: _testresources.Resources.getPlant(),
          );
          expect(
            find.text(
              'Edit plant data',
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders form',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: _testresources.Resources.getPlant(),
          );
          expect(
            find.byKey(
              const Key(
                'nameFormKey',
              ),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders form field',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: _testresources.Resources.getPlant(),
          );
          expect(
            find.byKey(
              const Key(
                'nameFormFieldKey',
              ),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders drop down type button',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: _testresources.Resources.getPlant(),
          );
          expect(
            find.byKey(
              const Key(
                'selectTypeButtonKey',
              ),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders select planting date button',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: _testresources.Resources.getPlant(),
          );
          expect(
            find.byKey(
              const Key(
                'selectPlantingDateButtonKey',
              ),
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'renders save changes button',
        (tester) async {
          await tester.pumpFormView(
            bloc: formBloc,
            plantData: _testresources.Resources.getPlant(),
          );
          expect(
            find.byKey(
              const Key(
                'saveChangesButtonKey',
              ),
            ),
            findsOneWidget,
          );
        },
      );
    },
  );
}
