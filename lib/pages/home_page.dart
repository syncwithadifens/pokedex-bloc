import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/poke_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BlocBuilder<PokeBloc, PokeState>(
        builder: (context, state) {
          if (state is PokeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PokeLoaded) {
            return ListView.builder(
              itemCount: state.pokedata.length,
              itemBuilder: (context, index) {
                return Text(state.pokedata[index].name.toString());
              },
            );
          } else {
            return const Center(child: Text('no data'));
          }
        },
      )),
    );
  }
}
