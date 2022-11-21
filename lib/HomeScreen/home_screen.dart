import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/Colors/colors.dart';
import 'package:test/DioHelper/dio.dart';
import 'package:test/cubit/cubit.dart';

import '../UI/MyCard/my_card.dart';
import '../cubit/states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainCubitStates>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubitListener = MainCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'طلبات الاجازه الخاصه بي',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: primaryColor,
                  ))
            ],
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: primaryColor,
                )),
            backgroundColor: appBarColor,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                state is! DummyListLoadingState
                    ? ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 170,
                            child: MyCard(
                              authorName: cubitListener
                                      .dummyNewsList!.data![index].author ??
                                  'No Author',
                              sourceName: cubitListener.dummyNewsList!
                                      .data![index].source!.name ??
                                  'No Name',
                            ),
                          ),
                        ),
                        itemCount: cubitListener.dummyNewsList!.data!.length,
                      )
                    : const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(child: CircularProgressIndicator()),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
