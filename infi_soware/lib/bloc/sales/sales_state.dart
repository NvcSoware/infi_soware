part of 'sales_bloc.dart';

@immutable
sealed class SalesState {
  const SalesState();
}

final class SalesInitial extends SalesState {
  const SalesInitial();
}

final class SalesLoading extends SalesState {
  const SalesLoading();
}

final class SalesLoaded extends SalesState {
  final Sales sales;
  const SalesLoaded(this.sales);

  @override
  bool operator ==(Object other) {
    // TODO: implement ==
    identical(this, other) ||
        other is SalesLoaded &&
            runtimeType == other.runtimeType &&
            sales == other.sales;
    return super == other;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}

final class SalesError extends SalesState {
  final String message;
  SalesError(this.message);
  @override
  bool operator ==(Object other) {
    identical(this, other) ||
        other is SalesError &&
            runtimeType == other.runtimeType &&
            message == other.message;
    return super == other;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}
