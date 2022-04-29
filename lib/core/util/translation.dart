class TranslationModel {
  late String home;
  late String cart;
  late String categories;
  late String logoutConfirmation;
  late String profile;
  late String cancel;
  late String yes;
  late String userLogin;
  late String emailAddress;
  late String password;
  late String dontHaveAccount;
  late String newAccount;
  late String enterYourEmail;
  late String enterYourPassword;

  TranslationModel.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    cart = json['cart'];
    categories = json['categories'];
    logoutConfirmation = json['logoutConfirmation'];
    profile = json['profile'];
    cancel = json['cancel'];
    yes = json['yes'];
    userLogin = json['userLogin'];
    emailAddress = json['emailAddress'];
    password = json['password'];
    dontHaveAccount = json['dontHaveAccount'];
    newAccount = json['newAccount'];
    enterYourEmail = json['enterYourEmail'];
    enterYourPassword = json['enterYourPassword'];
  }

  Map toJson() => {
        'home': home,
        'cart': cart,
        'categories': categories,
        'logoutConfirmation': logoutConfirmation,
        'profile': profile,
        'cancel': cancel,
        'yes': yes,
        'userLogin': userLogin,
        'emailAddress': emailAddress,
        'password': password,
        'dontHaveAccount': dontHaveAccount,
        'newAccount': newAccount,
        'enterYourEmail': enterYourEmail,
        'enterYourPassword': enterYourPassword,

  };
}
