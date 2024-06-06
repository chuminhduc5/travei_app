import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_application/blocs/get_travel_bloc/get_travel_bloc.dart';

import '../../theme.dart';
import '../../widgets/travel/travel_tour_card_widget.dart';
import '../travel/detail_travel_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: BlocBuilder<GetTravelBloc, GetTravelState>(
                  builder: (context, state) {
                if (state is GetTravelSuccess) {
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      childAspectRatio: 25 / 12,
                    ),
                    itemCount: state.travels.length,
                    itemBuilder: (context, int i) {
                      return Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailTravelScreen(state.travels[i]),
                              ),
                            );
                          },
                          child: TravelTourCardWidget(
                            picture: state.travels[i].picture,
                            name: state.travels[i].name,
                            date: state.travels[i].date,
                            departureDate: state.travels[i].departureDate,
                            price: state.travels[i].price,
                          ),
                        ),
                      );
                    },
                  );
                } else if (state is GetTravelLoading) {
                  return const Center(
                    child: CircularProgressIndicator(color: AppColors.blue),
                  );
                } else {
                  return const Center(
                    child: Text('Không có tour du lịch nào'),
                  );
                }
              }),
            ),
          ),
          BlocBuilder<GetTravelBloc, GetTravelState>(
            builder: (context, state) {
              if (state is GetTravelLoading) {
                return const Center(
                  child: CircularProgressIndicator(color: AppColors.blue),
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
