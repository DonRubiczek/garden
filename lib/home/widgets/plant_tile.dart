import 'package:flutter/material.dart';
import 'package:garden/form/form_page.dart';
import 'package:garden/model/plant_data.dart';
import 'package:garden/theme/main_theme.dart';

class PlantTile extends StatelessWidget {
  const PlantTile({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final PlantData plant;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: Key(
        'key${plant.identifier}',
      ),
      onTap: () => Navigator.push<void>(
        context,
        FormPage.route(plant),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      leading: Container(
        padding: const EdgeInsets.only(
          right: 12,
        ),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: context.theme.mainColor,
            ),
          ),
        ),
        child: Column(
          children: [
            Icon(
              Icons.apple,
              color: context.theme.accentColor,
            ),
            Text(
              plant.name.characters.first + plant.name.characters.last,
              style: context.theme.listTileShortName,
            ),
          ],
        ),
      ),
      title: Text(
        plant.name,
        style: context.theme.listTileTitle,
      ),
      subtitle: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  right: 5,
                ),
                child: Text(
                  plant.type,
                  style: context.theme.listTilePlantType,
                ),
              ),
              Text(
                plant.date.substring(0, 10),
                style: context.theme.listTilePlantType,
              ),
            ],
          ),
        ],
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: context.theme.accentColor,
        size: 30,
      ),
    );
  }
}
