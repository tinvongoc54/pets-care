import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/router/discover_route.dart';
import 'package:pets_care/router/explore_route.dart';
import 'package:pets_care/router/home_route.dart';
import 'package:pets_care/router/manage_route.dart';
import 'package:pets_care/router/profile_route.dart';
import 'package:pets_care/ui/bloc/app/app_cubit.dart';
import 'package:pets_care/ui/discover/discover_screen.dart';
import 'package:pets_care/ui/explore/explore_screen.dart';
import 'package:pets_care/ui/home/home_screen.dart';
import 'package:pets_care/ui/manage/manage_screen.dart';
import 'package:pets_care/ui/profile/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainView();
  }
}

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (old, state) {
        return old.currentTab != state.currentTab;
      },
      builder: (context, state) {
        return PopScope(
          onPopInvoked: (_) {},
          child: Scaffold(
            backgroundColor: AppColors.grayLight,
            body: Stack(children: [
              _buildOffstageNavigator(state.currentTab, 0),
              _buildOffstageNavigator(state.currentTab, 1),
              _buildOffstageNavigator(state.currentTab, 2),
              _buildOffstageNavigator(state.currentTab, 3),
              _buildOffstageNavigator(state.currentTab, 4),
            ]),
            bottomNavigationBar: GNav(
              tabs: _buildTabsIcon(),
              backgroundColor: AppColors.white,
              haptic: true,
              tabBorderRadius: 100,
              curve: Curves.easeInToLinear,
              duration: const Duration(milliseconds: 500),
              gap: 4,
              activeColor: AppColors.white,
              iconSize: 30,
              tabBackgroundGradient: AppColors.primaryGradient,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              selectedIndex: state.currentTab,
              onTabChange: (index) {
                context.read<AppCubit>().setCurrentTab(index);
              },
            ),
          ),
        );
      },
    );
  }

  _buildOffstageNavigator(int selectedTab, int index) {
    return Offstage(
      offstage: selectedTab != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          switch (index) {
            case 0:
              return HomeRoute.onGenerateRoute(routeSettings);
            case 1:
              return DiscoverRoute.onGenerateRoute(routeSettings);
            case 2:
              return ExploreRoute.onGenerateRoute(routeSettings);
            case 3:
              return ManageRoute.onGenerateRoute(routeSettings);
            case 4:
              return ProfileRoute.onGenerateRoute(routeSettings);
            default:
              return HomeRoute.onGenerateRoute(routeSettings);
          }
        },
      ),
    );
  }

  _buildTabsIcon() {
    return const [
      GButton(
        icon: Icons.home,
        text: 'Home',
        iconColor: AppColors.primary,
      ),
      GButton(
        icon: Icons.explore,
        text: 'Discover',
        iconColor: AppColors.primary,
      ),
      GButton(
        icon: Icons.location_on,
        text: 'Explore',
        iconColor: AppColors.primary,
      ),
      GButton(
        icon: Icons.laptop_mac,
        text: 'Manage',
        iconColor: AppColors.primary,
      ),
      GButton(
        icon: Icons.person,
        text: 'Profile',
        iconColor: AppColors.primary,
      ),
    ];
  }
}
