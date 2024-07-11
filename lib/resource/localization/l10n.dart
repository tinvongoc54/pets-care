// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppTranslations {
  AppTranslations();

  static AppTranslations? _current;

  static AppTranslations get current {
    assert(_current != null,
        'No instance of AppTranslations was loaded. Try to initialize the AppTranslations delegate before accessing AppTranslations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppTranslations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppTranslations();
      AppTranslations._current = instance;

      return instance;
    });
  }

  static AppTranslations of(BuildContext context) {
    final instance = AppTranslations.maybeOf(context);
    assert(instance != null,
        'No instance of AppTranslations present in the widget tree. Did you add AppTranslations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppTranslations? maybeOf(BuildContext context) {
    return Localizations.of<AppTranslations>(context, AppTranslations);
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Hey! Welcome`
  String get welcome {
    return Intl.message(
      'Hey! Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `while you sit and stay - we’ll go out and play`
  String get slide1 {
    return Intl.message(
      'while you sit and stay - we’ll go out and play',
      name: 'slide1',
      desc: '',
      args: [],
    );
  }

  /// `One tap for foods, accessories, health care products & digital gadgets`
  String get slide2_1 {
    return Intl.message(
      'One tap for foods, accessories, health care products & digital gadgets',
      name: 'slide2_1',
      desc: '',
      args: [],
    );
  }

  /// `Grooming & boarding`
  String get slide2_2 {
    return Intl.message(
      'Grooming & boarding',
      name: 'slide2_2',
      desc: '',
      args: [],
    );
  }

  /// `Easy & best consultation bookings`
  String get slide2_3 {
    return Intl.message(
      'Easy & best consultation bookings',
      name: 'slide2_3',
      desc: '',
      args: [],
    );
  }

  /// `24hrs location tracking & health updates`
  String get slide3_1 {
    return Intl.message(
      '24hrs location tracking & health updates',
      name: 'slide3_1',
      desc: '',
      args: [],
    );
  }

  /// `On time feeding updates`
  String get slide3_2 {
    return Intl.message(
      'On time feeding updates',
      name: 'slide3_2',
      desc: '',
      args: [],
    );
  }

  /// `Now!`
  String get now {
    return Intl.message(
      'Now!',
      name: 'now',
      desc: '',
      args: [],
    );
  }

  /// `We provide`
  String get provide {
    return Intl.message(
      'We provide',
      name: 'provide',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get already_account {
    return Intl.message(
      'Already have an account? ',
      name: 'already_account',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get discover {
    return Intl.message(
      'Discover',
      name: 'discover',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get explore {
    return Intl.message(
      'Explore',
      name: 'explore',
      desc: '',
      args: [],
    );
  }

  /// `Manage`
  String get manage {
    return Intl.message(
      'Manage',
      name: 'manage',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Oops something went wrong`
  String get somethingWentWrongMessage {
    return Intl.message(
      'Oops something went wrong',
      name: 'somethingWentWrongMessage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppTranslations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppTranslations> load(Locale locale) => AppTranslations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
