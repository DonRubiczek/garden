import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:garden/backend/backend.dart';
import 'package:garden/home/bloc/home_bloc.dart';
import 'package:provider/provider.dart';

class BackendProvider extends StatelessWidget {
  const BackendProvider({
    Key? key,
    required this.backend,
    required this.child,
  }) : super(key: key);

  final Backend backend;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Backend>.value(
          value: backend,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>.value(
            value: backend.homeBloc
              ..add(
                const HomeEvent.fetchPage(
                  id: 0,
                  plantName: '',
                ),
              ),
          ),
        ],
        child: child,
      ),
    );
  }
}
