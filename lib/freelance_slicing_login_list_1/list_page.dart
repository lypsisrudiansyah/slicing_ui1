// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:slicing1/freelance_slicing_login_list_1/data_model.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  TextEditingController searchTextController = TextEditingController();

  List<DataModel> allData = dataList;
  List<DataModel> filteredData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredData = allData;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('My App'),
        automaticallyImplyLeading: false,
        title: PreferredSize(
          preferredSize: const Size.fromHeight(5),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              child: TextFormField(
                controller: searchTextController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      print("clear triggered");
                      setState(() {
                        searchTextController.clear();
                        filteredData = allData;
                      });
                    },
                  ),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onFieldSubmitted: (String value) {
                  print('search value : $value');
                  setState(() {
                    filteredData = allData
                        .where((data) => data.title
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                  });
                },
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Title',
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                // color: Colors.red,
                child: ListView.builder(
                  itemCount: filteredData.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = filteredData[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: Image.asset(data.image),
                        title: Text(data.title),
                        subtitle: Text(data.subtitle),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
