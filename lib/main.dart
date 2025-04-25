import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/cubits/trendio_cubit.dart';
import 'package:trendio/views/main_view.dart';

void main() => runApp(Trendio());

class Trendio extends StatelessWidget {
  const Trendio({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 883),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => TrendioCubit(),
        child: MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0,
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: MainView(),
        ),
      ),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.linear(0.99)),
          child: child!,
        );
      },
    );
  }
}
