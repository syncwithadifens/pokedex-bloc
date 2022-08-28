part of 'poke_bloc.dart';

abstract class PokeEvent extends Equatable {
  const PokeEvent();

  @override
  List<Object> get props => [];
}

class GetListPokeEvent extends PokeEvent {}
