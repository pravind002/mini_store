import 'package:flutter/material.dart';

class SearchPage extends SearchDelegate {
  Color? color;
  List<String> data = ['Android', 'Mac', 'Windows', 'Linux', 'Parrot OS'];

  List<String> recentSearch = [
    'Mac',
    'Android',
    'iOS',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != null && data.contains(query.toLowerCase())) {
      return ListTile(
        title: Text(query),
        onTap: () {},
        textColor: Colors.black,
        //textColor: Colors.black,
      );
    } else if (query == '') {
      return const Text('');
    } else {
      return ListTile(
        title: const Text('No Results Found'),
        onTap: () {},
        textColor: Colors.black,
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: recentSearch.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recentSearch[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: () {},
          );
        });
  }
}
