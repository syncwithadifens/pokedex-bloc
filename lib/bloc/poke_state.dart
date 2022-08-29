part of 'poke_bloc.dart';

abstract class PokeState extends Equatable {
  const PokeState();

  @override
  List<Object> get props => [];
}

class PokeInitial extends PokeState {
  @override
  List<Object> get props => [];
}

class PokeLoading extends PokeState {
  @override
  List<Object> get props => [];
}

class PokeLoaded extends PokeState {
  final List<PokeModel> pokedata;
  const PokeLoaded({required this.pokedata});
}

class PokeError extends PokeState {
  @override
  List<Object> get props => [];
}
