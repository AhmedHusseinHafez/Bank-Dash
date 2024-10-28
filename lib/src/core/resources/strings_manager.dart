import 'package:bank_dash/src/app/gen_localization/l10n.dart';

class StringsManager {
  StringsManager._internal();
  static final StringsManager _instance =
      StringsManager._internal(); // singleton
  factory StringsManager() => _instance;

  static final getWord = MyLocalization.current;

  static String bankDash = "BankDash.";
  static String dashboard = "Dashboard";
  static String transactions = "Transactions";
  static String accounts = "Accounts";
  static String investments = "Investments";
  static String creditCards = "Credit Cards";
  static String loans = "Loans";
  static String services = "Services";
  static String myPrivileges = "My Privileges";
  static String setting = "Setting";
  static String overview = "Overview";
  static String searchForSomething = "Search for something";
  static String myCards = "My Cards";
  static String balance = "Balance";
  static String cARDHOLDER = "CARD HOLDER";
  static String vALIDTHRU = "VALID THRU";
  static String weeklyActivity = "Weekly Activity";
  static String deposit = "Deposit";
  static String withdraw = "Withdraw";
  static String seeAll = "See All";
  static String recentTransaction = "Recent Transaction";
  static String depositFromMyCard = "Deposit from my Card";
  static String depositPaypal = "Deposit Paypal";
  static String quickTransfer = "Quick Transfer";
  static String cEO = "CEO";
  static String director = "Director";
  static String designer = "Designer";
  static String send = "Send";
  static String writeAmount = "Write Amount";
  static String balanceHistory = "Balance History";
  static String expenseStatistics = "Expense Statistics";
  static String entertainment = "Entertainment";
  static String billExpense = "Bill Expense";
  static String others = "Others";
  // static String  = "";
}
