import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenline_admin/application/connectivity/connectivity_cubit.dart';
import 'package:greenline_admin/core/util/dependencey_injection/injection.dart';

class GreenlineApp extends StatelessWidget {
  const GreenlineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ConnectivityCubit>(
        create: (context) => getIt<ConnectivityCubit>(),
        child: MaterialApp(
          title: 'Greenline Admin',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          home: Container(
              color: Colors.white,
              child: Center(child:
                  BlocBuilder<ConnectivityCubit, ConnectivityState>(
                      builder: (context, state) {
                if (state is Connected) {
                  return const Text("Connected",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w900));
                } else {
                  return const Text("DisConnected",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w900));
                }
              }))),
        ));
  }
}
