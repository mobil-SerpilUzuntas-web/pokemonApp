import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_bilgileri/model/pokemon_model.dart';
import 'package:pokemon_bilgileri/style_constants.dart';
import 'package:pokemon_bilgileri/ui_helper.dart';

class PokeInformation extends StatelessWidget {
  PokemonModel pokemon;
  PokeInformation({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10.w),
        color: Colors.white,
      ),
      child: Padding(padding: UlHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow('Name:', pokemon.name),
            _buildInformationRow('Height:', pokemon.height),
            _buildInformationRow('Weight:', pokemon.weight),
            _buildInformationRow('Spawn Time:', pokemon.spawnTime),
            _buildInformationRow('Spawn Time:', pokemon.spawnTime),
            _buildInformationRow('Weakness:', pokemon.weaknesses),
            _buildInformationRow('Pre Evolution:', pokemon.prevEvolution),
            _buildInformationRow('Next Evolution:', pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

_buildInformationRow(String label, dynamic value) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: Constants.getPokeInfoLabelStyle()),
          if (value is List && value.isNotEmpty)
            Text(value.join(' , '), style: Constants.getPokeInfoLabelStyle())
          else if (value == null)
            Text('Not available ', style: Constants.getPokeInfoLabelStyle())
          else
            Text(value, style: Constants.getPokeInfoLabelStyle()),
        ],
   
    );
  }
}
