import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pokedex/models/poke_model.dart';
import 'package:pokedex/services/http_service.dart';

part 'poke_event.dart';
part 'poke_state.dart';

class PokeBloc extends Bloc<PokeEvent, PokeState> {
  HttpService httpService = HttpService();
  PokeBloc() : super(PokeInitial()) {
    on<PokeEvent>((event, emit) async {
      // TODO: implement event handler
      var pokemon = await httpService.getPokeList();
      emit(PokeLoaded(pokedata: pokemon));
    });
  }
}
