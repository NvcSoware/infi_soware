import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:infi_soware/prelogin_checking.dart';
import 'package:infi_soware/ui/screen/accounts_screens/payment_screen.dart';
import 'package:infi_soware/ui/screen/accounts_screens/reciept_screen.dart';
import 'package:infi_soware/ui/screen/home_screen.dart';
import 'package:infi_soware/ui/screen/inventory_screens/grn_screen.dart';
import 'package:infi_soware/ui/screen/inventory_screens/quotation_screen.dart';
import 'package:infi_soware/ui/screen/inventory_screens/sales_order_screen.dart';
import 'package:infi_soware/ui/screen/inventory_screens/sales_screen.dart';
import 'package:infi_soware/ui/screen/inventory_screens/stock_adjust_screen.dart';
import 'package:infi_soware/ui/screen/inventory_screens/transfer_in_screen.dart';
import 'package:infi_soware/ui/screen/inventory_screens/transfer_out_screen.dart';
import 'package:infi_soware/ui/screen/login_screen.dart';
import 'package:infi_soware/ui/screen/report_screens/account_ledger_screen.dart';
import 'package:infi_soware/ui/screen/report_screens/customer_balance_in_days_screen.dart';
import 'package:infi_soware/ui/screen/report_screens/invoice_item_screen.dart';
import 'package:infi_soware/ui/screen/views_screens/price_checker_screen.dart';
import 'package:infi_soware/ui/screen/views_screens/price_stock_screen.dart';
import 'package:infi_soware/ui/screen/views_screens/price_view_screen.dart';

import 'ui/screen/inventory_screens/physical_stock.dart';
import 'ui/screen/report_screens/daily_closing_screen.dart';
import 'ui/screen/report_screens/daily_transaction_screen.dart';
import 'ui/screen/report_screens/invoice_report_screen.dart';
import 'ui/screen/report_screens/transaction_summery_screen.dart';

class Routes {
  static const String prelogin = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String sales = '/salesScreen';
  static const String grn = '/grnScreen';
  static const String physicalStock = '/physicalStockScreen';
  static const String quotation = '/quotationScreen';
  static const String salesOrder = '/salesOrderScreen';
  static const String stockAdjust = '/stockAdjustScreen';
  static const String trnsferIn = '/transferInscreen';
  static const String transferOut = '/transferOutScreen';
  static const String reciept = '/recieptScreen';
  static const String payment = '/paymentScreen';
  static const String priceCheck = '/priceCheckScreen';
  static const String priceView = '/priceViewScreen';
  static const String priceStock = '/priceStockScreen';
  static const String accountLedger = '/accountLedgerScreen';
  static const String balanceInDays = '/balanceInDaysScreen';
  static const String dailyTransaction = '/dailyTransactionScreen';
  static const String transactionSummery = '/transactionSummeryScreen';
  static const String dailyClosing = '/dailyClosingScreen';
  static const String invoiceReport = '/invoiceReportScreen';
  static const String invoiceItem = '/invoiceitemScreen';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      prelogin: (context) => PreloginChecking(),
      login: (context) => LoginScreen(
            name: '',
          ),
      // home: (context) => HomeScreen()
      sales: (context) => SalesScreen(
            label: 'select date',
            onDateSelected: (DateTime date) {
              log('Selected Date ${date.toString()}');
            },
          ),
      grn: (context) => GrnScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      physicalStock: (context) => PhysicalStockScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      quotation: (context) => QuotationScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      salesOrder: (context) => SalesOrderScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      stockAdjust: (context) => StockAdjustScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      trnsferIn: (context) => TransferInScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      transferOut: (context) => TransferOutScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),

      reciept: (context) => RecieptScreen(),
      payment: (context) => PaymentScreen(),
      priceCheck: (context) => PriceCheckerScreen(),
      priceView: (context) => PriceViewScreen(),
      priceStock: (context) => PriceStockScreen(),
      accountLedger: (context) => AccountLedgerScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      balanceInDays: (context) => CustomerBalanceInDaysScreen(),
      dailyTransaction: (context) => DailyTransactionScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      transactionSummery: (context) => TransactionSummeryScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      dailyClosing: (context) => DailyClosingScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      invoiceReport: (context) => InvoiceReportScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
      invoiceItem: (context) => InvoiceItemScreen(
          label: 'Selected ',
          onDateSelected: (DateTime date) {
            log('selected date ${date.toString()}');
          }),
    };
  }
}
