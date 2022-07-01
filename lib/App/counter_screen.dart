import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/App/counter_cubit.dart';
import 'package:flutter_bloc_app/App/state.dart';


class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context)=> CounterCubit() ,
      child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center ,

                    children: [
                      BlocConsumer<CounterCubit , CounterState>(
                          listener: (BuildContext context ,CounterState state){} ,
                          builder: (BuildContext context ,CounterState state){
                            print("Button");
                            return IconButton(onPressed: () {
                              CounterCubit.get(context).inCreaseNumber();
                            } , icon: const Icon(Icons.add));
                          }
                      ) ,

                      BlocConsumer<CounterCubit , CounterState>(
                          listener: (BuildContext context ,CounterState state){} ,
                          builder:(BuildContext contextTest ,CounterState state) {
                            print("Text");
                            final CounterCubit _cubitTest = CounterCubit.get(contextTest);
                            return Text('${_cubitTest.number}');
                          }) ,

                      BlocConsumer<CounterCubit , CounterState>(
                          listener: (BuildContext context ,CounterState state){} ,
                          builder: (BuildContext context ,CounterState state){
                            print("Button1");
                            return IconButton(onPressed: () {
                              CounterCubit.get(context).deCreaseNumber();
                            } , icon: const Icon(Icons.minimize));
                          }
                      ) ,
                    ],
                  )
                ],
              ),
            )

    );
  }
}
