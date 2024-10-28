class AppConstants {
  const AppConstants._internal();
  static const AppConstants _instance = AppConstants._internal(); // singleton
  factory AppConstants() => _instance;

  static const appName = "Bank Dash";
}
