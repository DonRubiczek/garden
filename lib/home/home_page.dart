import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/form/form_page.dart';
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:garden/home/widgets/paged_list.dart';
import 'package:garden/l10n/l10n.dart';
import 'package:garden/model/plant_data.dart';
import 'package:garden/theme/main_theme.dart';
import 'package:garden/widgets/error_dialog.dart';
import 'package:garden/widgets/garden_form.dart';
import 'package:garden/widgets/loader.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static MaterialPageRoute route() => MaterialPageRoute<dynamic>(
        builder: (_) => const HomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _nameController = TextEditingController();
  final PagingController<int, PlantData> _pagingController = PagingController(
    firstPageKey: 0,
    invisibleItemsThreshold: 1,
  );

  @override
  void initState() {
    SchedulerBinding.instance?.addPostFrameCallback(
      (_) {
        _pagingController.addPageRequestListener(
          (pageKey) {
            var lastItemId = 0;
            if (_pagingController.itemList != null) {
              lastItemId = _pagingController.itemList!.last.identifier!;
            }
            context.read<HomeBloc>().add(
                  HomeEvent.fetchPage(
                    id: lastItemId,
                    plantName: _nameController.text,
                  ),
                );
          },
        );
      },
    );
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
      child: Scaffold(
        //key: myGlobals.scaffoldKey,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: context.theme.accentColor,
          centerTitle: true,
          title: Text(
            context.l10n.homePageTitle,
            style: context.theme.appBarTitle,
          ),
        ),
        body: BlocConsumer<HomeBloc, HomeState>(
          buildWhen: (previousState, state) {
            return state is! HomeError &&
                state is! HomeNextPage &&
                state is! HomeAddedSuccessfully &&
                state is! HomeEditedSuccessfully;
          },
          listener: (BuildContext context, state) {
            if (state is HomeError) {
              showDialog<AlertDialog>(
                context: context,
                builder: (BuildContext context) {
                  return ErrorDialog(
                    content: state.message,
                  );
                },
              );
            } else if (state is HomeNextPage) {
              _appendListItems(state.plants, state.pageKey);
            } else if (state is HomeInitilized) {
              _pagingController.itemList = null;
              _appendListItems(state.plants, state.pageKey);
            } else if (state is HomeEditedSuccessfully) {
              final index = _pagingController.itemList?.indexWhere(
                (element) => element.identifier == state.plant.identifier,
              );

              if (index != null) {
                _pagingController.itemList![index] = state.plant;
                _pagingController.notifyListeners();
              }

              _displaySnackBar(
                'Plant with name: ${state.plant.name} edited successfully',
              );
            } else if (state is HomeAddedSuccessfully) {
              _displaySnackBar(
                'Plant with name: ${state.plant.name} added successfully',
              );
            }
          },
          builder: (context, state) {
            if (state is HomeInitial) {
              return Loader();
            } else if (state is HomeInitilized) {
              return _buildContent(context);
            } else {
              return Loader();
            }
          },
        ),
        floatingActionButton: ElevatedButton.icon(
          key: const Key(
            'addPlantButtonKey',
          ),
          style: context.theme.homeFloatingButtonStyle,
          onPressed: () {
            Navigator.push<void>(
              context,
              FormPage.route(
                PlantData(
                  name: '',
                  type: '',
                  date: '',
                ),
              ),
            );
          },
          icon: const Icon(Icons.add),
          label: Text(
            context.l10n.formPageCreateTitle,
            style: context.theme.floatingButtonText,
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Card(
      color: context.theme.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 30,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                context.l10n.homePageFindPlantDesc,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: context.theme.accentColor,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GardenForm(
              formKey: const Key(
                'searchPlantByNameFormKey',
              ),
              formFieldKey: const Key(
                'searchPlantByNameFormFieldKey',
              ),
              label: context.l10n.homePageFindPlantPLaceholder,
              controller: _nameController,
              onChanged: (value) => context.read<HomeBloc>().add(
                    HomeEvent.fetchPage(
                      id: 0,
                      plantName: value,
                    ),
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: PagedList(
                pagingController: _pagingController,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _appendListItems(List<PlantData> plants, int pageKey) {
    if (plants.length < 10) {
      _pagingController.appendLastPage(plants);
    } else {
      final nextPageKey = pageKey + 1;
      _pagingController.appendPage(plants, nextPageKey);
    }
  }

  void _displaySnackBar(String content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          content,
        ),
        action: SnackBarAction(
          label: context.l10n.dismissDialog,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _pagingController.dispose();
    super.dispose();
  }
}
