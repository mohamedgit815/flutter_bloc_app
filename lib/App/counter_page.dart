import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/App/counter_cubit.dart';
import 'package:flutter_bloc_app/App/state.dart';


class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext mainContext) {

    print("Main");


    return BlocProvider(
        create: (BuildContext context)=> CounterCubit() ,
      child: BlocConsumer<CounterCubit , CounterState>(
          listener: (BuildContext context , state){},
          builder: (BuildContext context , state){
            final CounterCubit _cubit = CounterCubit.get(context);
            print("Second Main");


            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center ,

                    children: [
                      IconButton(onPressed: (){_cubit.inCreaseNumber();} , icon: const Icon(Icons.add)) ,
                      Text(_cubit.number.toString()) ,
                      IconButton(onPressed: () {
                        CounterCubit.get(context).deCreaseNumber();
                        }, icon: const Icon(Icons.minimize))
                    ],
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
