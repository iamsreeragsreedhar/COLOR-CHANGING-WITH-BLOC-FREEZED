import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc/color_change_bloc.dart';

class Homapage extends StatelessWidget {
  const Homapage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: BlocBuilder<ColorChangeBloc, ColorChangeState>(
            builder: (BuildContext context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: state.isRed ? Colors.green : Colors.red),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: state.isRed ? Colors.red : Colors.green),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        context
                            .read<ColorChangeBloc>()
                            .add(ColorChangeEvent.toggleColors());
                      },
                      icon: Icon(
                        Icons.change_circle,
                        size: 60,
                      ))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
