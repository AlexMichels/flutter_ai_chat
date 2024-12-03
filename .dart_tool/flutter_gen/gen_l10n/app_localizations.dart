import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en')
  ];

  /// The title to be shown in the menu bar
  ///
  /// In en, this message translates to:
  /// **'Ai Chat'**
  String get appTitle;

  /// No description provided for @message_chat_gpt.
  ///
  /// In en, this message translates to:
  /// **'Message ChatGPT'**
  String get message_chat_gpt;

  /// No description provided for @flutterSeniorDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Flutter Senior Developer'**
  String get flutterSeniorDeveloper;

  /// No description provided for @byDialogplus.
  ///
  /// In en, this message translates to:
  /// **'By Dialogplus'**
  String get byDialogplus;

  /// No description provided for @tooSmallScreenSizeToShowChatScreen.
  ///
  /// In en, this message translates to:
  /// **'Too small screen size to show the chat history'**
  String get tooSmallScreenSizeToShowChatScreen;

  /// No description provided for @createAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get createAnAccount;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAnAccount;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get or;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue With Google'**
  String get continueWithGoogle;

  /// No description provided for @continueWithMicrosoftAccount.
  ///
  /// In en, this message translates to:
  /// **'Continue With Microsoft Account'**
  String get continueWithMicrosoftAccount;

  /// No description provided for @continueWithApple.
  ///
  /// In en, this message translates to:
  /// **'Continue With Apple'**
  String get continueWithApple;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @termOfUse.
  ///
  /// In en, this message translates to:
  /// **'Term Of Use'**
  String get termOfUse;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @errorMessage.
  ///
  /// In en, this message translates to:
  /// **'404 - Page not found'**
  String get errorMessage;

  /// No description provided for @newChat.
  ///
  /// In en, this message translates to:
  /// **'New Chat'**
  String get newChat;

  /// No description provided for @multiChats.
  ///
  /// In en, this message translates to:
  /// **'Multi Chats'**
  String get multiChats;

  /// No description provided for @fluttera.
  ///
  /// In en, this message translates to:
  /// **'Fluttera >'**
  String get fluttera;

  /// No description provided for @flutera.
  ///
  /// In en, this message translates to:
  /// **'Fluttera'**
  String get flutera;

  /// No description provided for @chatGPT.
  ///
  /// In en, this message translates to:
  /// **'ChatGPT'**
  String get chatGPT;

  /// No description provided for @gemini.
  ///
  /// In en, this message translates to:
  /// **'Gemini'**
  String get gemini;

  /// No description provided for @greatForMostDeveloperTasks.
  ///
  /// In en, this message translates to:
  /// **'Great for most developer tasks'**
  String get greatForMostDeveloperTasks;

  /// No description provided for @greatForMostTasks.
  ///
  /// In en, this message translates to:
  /// **'Great for most tasks'**
  String get greatForMostTasks;

  /// No description provided for @usedAdvancedReasoning.
  ///
  /// In en, this message translates to:
  /// **'Used advanced reasoning'**
  String get usedAdvancedReasoning;

  /// No description provided for @todayChat.
  ///
  /// In en, this message translates to:
  /// **'Today Chat'**
  String get todayChat;

  /// No description provided for @previousChat.
  ///
  /// In en, this message translates to:
  /// **'Previous Chat'**
  String get previousChat;

  /// No description provided for @upgradePlan.
  ///
  /// In en, this message translates to:
  /// **'Upgrade Plan'**
  String get upgradePlan;

  /// No description provided for @moreAccessToTheBestModels.
  ///
  /// In en, this message translates to:
  /// **'More access to the best models'**
  String get moreAccessToTheBestModels;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
