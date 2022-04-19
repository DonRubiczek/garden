import 'dart:io' as io;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/backend/backend.dart';
import 'package:garden/form/bloc/form_bloc.dart' as bloc;
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:garden/l10n/l10n.dart';
import 'package:garden/model/plant_data.dart';
import 'package:garden/theme/main_theme.dart';
import 'package:garden/widgets/error_dialog.dart';
import 'package:garden/widgets/garden_form.dart';
import 'package:garden/widgets/loader.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key, required this.plant}) : super(key: key);

  final PlantData plant;

  static MaterialPageRoute route(PlantData plant) => MaterialPageRoute<dynamic>(
        builder: (_) => FormPage(
          plant: plant,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc.FormBloc(
        plantRepository: context.read<Backend>().plantRepository,
      ),
      child: FormView(
        plant: plant,
      ),
    );
  }
}

class FormView extends StatefulWidget {
  const FormView({Key? key, required this.plant}) : super(key: key);

  final PlantData plant;

  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  final _nameController = TextEditingController();
  List<String> _plantTypes = [];
  bool _isEditting = false;
  int _selectedIndex = 0;

  @override
  void initState() {
    _nameController.text =
        widget.plant.identifier != 0 ? widget.plant.name : '';
    _isEditting = widget.plant.name.isNotEmpty;
    _plantTypes = context.read<Backend>().resources.plantTypes;
    _selectedIndex = _isEditting ? _plantTypes.indexOf(widget.plant.type) : 0;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);

        if (currentFocus.hasPrimaryFocus == false) {
          currentFocus.unfocus();
        }
      },
      child: BlocConsumer<bloc.FormBloc, bloc.FormState>(
        buildWhen: (previousState, state) {
          return state is! bloc.FormError;
        },
        listener: (BuildContext context, state) {
          if (state is bloc.FormError) {
            showDialog<AlertDialog>(
              context: context,
              builder: (BuildContext context) {
                return ErrorDialog(content: state.message);
              },
            );
          } else if (state is bloc.FormPlantCreated) {
            Navigator.pop(context);
            context.read<HomeBloc>().add(
                  HomeEvent.plantAdded(
                    plant: state.plant,
                  ),
                );
          } else if (state is bloc.FormPlantUpdated) {
            Navigator.pop(context);
            context.read<HomeBloc>().add(
                  HomeEvent.plantEdited(
                    plant: state.plant,
                  ),
                );
          }
        },
        builder: (context, state) {
          if (state is bloc.FormInitial) {
            if (_isEditting) {
              return _buildPage(widget.plant);
            } else {
              return _buildPage(
                PlantData(name: '', type: '', date: ''),
              );
            }
          } else if (state is bloc.FormPlantPropertiesChanged) {
            return _buildPage(state.plant);
          } else if (state is bloc.FormLoading) {
            return Loader();
          } else {
            return _buildPage(
              PlantData(
                name: '',
                type: '',
                date: '',
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildPage(PlantData plantData) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          _isEditting
              ? context.l10n.formPageEditTitle
              : context.l10n.formPageCreateTitle,
          style: context.theme.appBarTitle,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Text(
                _isEditting
                    ? context.l10n.formPageSubtitleEdit
                    : context.l10n.formPageSubtitleAdd,
                style: context.theme.formSubtitle,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(4, 0, 0, 6),
              child: Text(
                context.l10n.formPageNameLabel,
                style: context.theme.formLabel,
              ),
            ),
            GardenForm(
              formKey: const Key(
                'nameFormKey',
              ),
              formFieldKey: const Key(
                'nameFormFieldKey',
              ),
              label: _isEditting
                  ? context.l10n.formPageUpdateNameInputPlaceholder
                  : context.l10n.formPageAddNameInputPlaceholder,
              controller: _nameController,
              onChanged: (name) => context.read<bloc.FormBloc>().add(
                    bloc.FormEvent.changePlantProperty(
                      plant: plantData.copyWith(
                        name: name,
                      ),
                    ),
                  ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(4, 30, 0, 6),
              child: Text(
                context.l10n.formPageTypeLabel,
                style: context.theme.formLabel,
              ),
            ),
            if (io.Platform.isAndroid)
              _dropdownTypeButtonAndroid(plantData)
            else
              _cupertinoTypeButtonIos(plantData),
            Container(
              padding: const EdgeInsets.fromLTRB(4, 30, 0, 6),
              child: Text(
                context.l10n.formPagePlantDateLabel,
                style: context.theme.formLabel,
              ),
            ),
            ElevatedButton(
              key: const Key(
                'selectPlantingDateButtonKey',
              ),
              onPressed: () => _selectDate(context, plantData),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  context.theme.mainColor,
                ),
              ),
              child: plantData.date.isEmpty
                  ? Text(
                      context.l10n.formPageSelectDate,
                      style: context.theme.selectDateLabel,
                    )
                  : Text(
                      plantData.date.substring(0, 10),
                      style: context.theme.selectDateLabel,
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        key: const Key(
          'saveChangesButtonKey',
        ),
        style: context.theme.formFloatingButtonStyle,
        onPressed: () => _addOrEditPlant(plantData),
        icon: _isEditting ? const Icon(Icons.edit) : const Icon(Icons.add),
        label: Text(
          context.l10n.save,
          style: context.theme.floatingButtonText,
        ),
      ),
    );
  }

  void _addOrEditPlant(PlantData plant) {
    if (_isEditting) {
      context.read<bloc.FormBloc>().add(
            bloc.FormEvent.editPlant(
              plant: plant,
            ),
          );
    } else {
      context.read<bloc.FormBloc>().add(
            bloc.FormEvent.addPlant(
              plant: plant,
            ),
          );
    }
  }

  Future _selectDate(BuildContext context, PlantData plant) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: plant.date.isNotEmpty
          ? DateTime.parse(
              plant.date.substring(0, 10),
            )
          : DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked.toIso8601String() != plant.date) {
      context.read<bloc.FormBloc>().add(
            bloc.FormEvent.changePlantProperty(
              plant: plant.copyWith(
                date: picked.toIso8601String(),
              ),
            ),
          );
    }
  }

  Widget _cupertinoTypeButtonIos(
    PlantData plantData,
  ) {
    final buildContext = context;
    return CupertinoButton(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          5,
        ),
      ),
      minSize: 38,
      color: context.theme.mainColor,
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      key: const Key(
        'selectTypeButtonKey',
      ),
      child: Text(
        plantData.type.isEmpty ? 'Select type' : plantData.type,
        style: context.theme.selectDateLabel,
      ),
      onPressed: () {
        showModalBottomSheet<Center>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 200,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CupertinoButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: CupertinoPicker(
                      scrollController: FixedExtentScrollController(
                        initialItem: _selectedIndex,
                      ),
                      itemExtent: 32,
                      backgroundColor: Colors.white,
                      onSelectedItemChanged: (int index) {
                        _selectedIndex = index;
                      },
                      children: List<Widget>.generate(
                        _plantTypes.length,
                        (int index) {
                          return Center(
                            child: Text(_plantTypes[index]),
                          );
                        },
                      ),
                    ),
                  ),
                  CupertinoButton(
                    child: const Text('Ok'),
                    onPressed: () {
                      setState(
                        () {
                          buildContext.read<bloc.FormBloc>().add(
                                bloc.FormEvent.changePlantProperty(
                                  plant: plantData.copyWith(
                                    type: _plantTypes[_selectedIndex],
                                  ),
                                ),
                              );
                        },
                      );
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _dropdownTypeButtonAndroid(PlantData plantData) {
    return DropdownButton<String>(
      key: const Key(
        'selectTypeButtonKey',
      ),
      value: plantData.type.isEmpty ? null : plantData.type.toLowerCase(),
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: context.theme.formLabel,
      underline: Container(
        height: 2,
        color: context.theme.mainColor,
      ),
      onChanged: (String? newValue) {
        context.read<bloc.FormBloc>().add(
              bloc.FormEvent.changePlantProperty(
                plant: plantData.copyWith(
                  type: newValue!,
                ),
              ),
            );
      },
      items: _plantTypes.map<DropdownMenuItem<String>>(
        (String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
