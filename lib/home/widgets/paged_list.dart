import 'package:flutter/material.dart';
import 'package:garden/home/widgets/plant_tile.dart';
import 'package:garden/l10n/l10n.dart';
import 'package:garden/model/plant_data.dart';
import 'package:garden/theme/main_theme.dart';
import 'package:garden/widgets/loader.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PagedList extends StatelessWidget {
  const PagedList({
    Key? key,
    required this.pagingController,
  }) : super(key: key);

  final PagingController<int, PlantData> pagingController;

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, PlantData>(
      key: const Key('PagedPlantListViewKey'),
      physics: const AlwaysScrollableScrollPhysics(),
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate<PlantData>(
        itemBuilder: (context, item, index) => PlantTile(
          plant: item,
        ),
        firstPageProgressIndicatorBuilder: (context) => const Loader(),
        newPageProgressIndicatorBuilder: (context) => const Loader(),
        firstPageErrorIndicatorBuilder: (context) => Container(),
        noItemsFoundIndicatorBuilder: (context) => Container(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: Text(
            context.l10n.homePageEmptyDatabase,
            textAlign: TextAlign.center,
            style: context.theme.homePageNoPlantfInfo,
          ),
        ),
      ),
    );
  }
}
