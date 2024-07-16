part of 'sales_bloc.dart';

@immutable
sealed class SalesEvent {}

final class FetchSalesData extends SalesEvent {
  FetchSalesData();
}

final class RefreshSalesData extends SalesEvent {
  RefreshSalesData();
}

final class FilterSalesData extends SalesEvent {
  final String filterCriteria;
  FilterSalesData(this.filterCriteria);
}
