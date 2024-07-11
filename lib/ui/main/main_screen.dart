import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/ui/bloc/app/app_cubit.dart';
import 'package:pets_care/ui/discover/discover_screen.dart';
import 'package:pets_care/ui/explore/explore_screen.dart';
import 'package:pets_care/ui/home/home_screen.dart';
import 'package:pets_care/ui/manage/manage_screen.dart';
import 'package:pets_care/ui/profile/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const int tabHome = 0;
  static const int tabDiscover = 1;
  static const int tabExplore = 2;
  static const int tabManage = 3;
  static const int tabProfile = 4;

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
  final _pageController = PageController();

  static final List<Widget> _tabs = [
    const HomeScreen(),
    const DiscoverScreen(),
    const ExploreScreen(),
    const ManageScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (_, state) {
        _pageController.jumpToPage(state.currentTab);
      },
      buildWhen: (old, state) {
        return old.currentTab != state.currentTab;
      },
      listenWhen: (old, state) {
        return old.currentTab != state.currentTab;
      },
      builder: (context, state) {
        return PopScope(
          onPopInvoked: (_) {},
          child: Scaffold(
            body: _buildBody(),
            bottomNavigationBar: GNav(
              tabs: const [
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
              ],
              backgroundColor: AppColors.white,
              haptic: true, // haptic feedback
              tabBorderRadius: 100,
              curve: Curves.easeInToLinear, // tab animation curves
              duration: const Duration(milliseconds: 500), // tab animation duration
              gap: 4, // the tab button gap between icon and text
              activeColor: AppColors.white, // selected icon and text color
              iconSize: 30, // tab button icon size
              tabBackgroundGradient: AppColors.primaryGradient, // selected tab background color
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

  _buildBody() {
    return Column(
      children: [
        Expanded(
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: _tabs,
          ),
        )
      ],
    );
  }
}
