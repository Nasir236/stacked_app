import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/screen/profile/profile_viewmodel.dart'
    show ProfileViewModel;

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Profle Page"),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewModel.counter.toString(),
                  style: TextStyle(fontSize: 44),
                ),
                SizedBox(height: 11),
                ElevatedButton(
                  onPressed: () {
                    viewModel.addValue();
                  },
                  child: Text("Add"),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        );
      },
    );
  }
}
