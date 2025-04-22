import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/screen/home/homeviewmodel.dart';
import 'package:stacked_app/screen/profile/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
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
                ElevatedButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileView()),
                    );
                    viewModel.rebuildUi();
                  },
                  child: Text("Go To Profile"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
