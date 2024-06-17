import 'package:flutter/material.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/widgets/car_search_bar.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/widgets/vehicle_makes_card_list.dart';

class VehicleMakesScreen extends StatelessWidget {
  const VehicleMakesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              CarSearchBar(),
              SizedBox(height: 16),
              VehicleMakesCardList(),
            ],
          ),
        ),
      ),
    );
  }
}
