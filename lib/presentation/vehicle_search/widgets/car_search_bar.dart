import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/presentation/common/debouncer.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/bloc/vehicle_makes_bloc.dart';

class CarSearchBar extends StatelessWidget {
  const CarSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 500);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                onChanged: (query) {
                  debouncer.run(() {
                    context
                        .read<VehicleMakesBloc>()
                        .add(VehicleMakesEvent.filterVehicleMakes(query));
                  });
                },
                decoration: const InputDecoration(
                    hintText: 'Search cars',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.only(left: 16, top: 4)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
