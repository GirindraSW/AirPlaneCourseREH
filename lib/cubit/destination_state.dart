part of 'destination_cubit.dart';

sealed class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

final class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSuccess extends DestinationState {
  final List<DestinationModel> destinations;
  DestinationSuccess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DesrtinationFailed extends DestinationState {
  final String error;
  DesrtinationFailed(this.error);

  @override
  List<Object> get props => [error];
}
