import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_care/di/injection.dart';
import 'package:pets_care/resource/localization/l10n.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/ui/home/bloc/home_cubit.dart';
import 'package:pets_care/ui/home/widgets/food_pet_widget.dart';
import 'package:pets_care/ui/home/widgets/location_pet_widget.dart';
import 'package:pets_care/ui/home/widgets/pet_list_widget.dart';
import 'package:pets_care/ui/home/widgets/status_pet_widget.dart';
import 'package:pets_care/ui/home/widgets/vets_list_widget.dart';
import 'package:pets_care/widgets/app_bar_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => getIt.get<HomeCubit>(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      body: Column(
        children: [
          AppBarCustom(
              title: AppTranslations.of(context).home, isShowBack: false, isShowAvatar: true),
          Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  context.read<HomeCubit>().loadData(isReload: true);
                },
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                        return Column(children: [
                          PetListWidget(isLoaded: state.isLoaded),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              LocationPetWidget(isLoaded: state.isLoaded),
                              const SizedBox(width: 15),
                              StatusPetWidget(isLoaded: state.isLoaded),
                            ],
                          ),
                          const SizedBox(height: 20),
                          FoodPetWidget(isLoaded: state.isLoaded),
                          const SizedBox(height: 20),
                          VetsListWidget(isLoaded: state.isLoaded)
                        ]);
                      },
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
