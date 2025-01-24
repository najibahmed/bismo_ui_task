import 'package:flutter/material.dart';
import 'package:loyality_card_wallet/app/card_model.dart';

import '../helper/data.dart';

class ItemSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear, color:Colors.teal))
    ];
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, '');
        },
        icon: const Icon(Icons.arrow_back, color: Colors.teal));
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListTile(
      tileColor: Colors.purple.shade50,
      onTap: () {
        close(context, query);
      },
      title: Text(query),
      leading: const Icon(
        Icons.search,
        color: Colors.teal,
      ),
    );
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final filteredList = query.isEmpty
        ? couponListData
        : couponListData
        .where((CardModel card) => card.title!.toLowerCase().startsWith(query.toLowerCase())).toList();
    return ListView.builder(
      itemCount: filteredList.length,
      itemBuilder: (context, index) {
        final item = filteredList[index];
        return ListTile(
          tileColor: Colors.grey[200],
          onTap: () {
            query = item.title!;
            close(context, query);
          },
          leading: SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(item.image!),
          ),
          title: Text(item.title!),
          subtitle: Text(item.cardType!),
        );
      },
    );
    throw UnimplementedError();
  }
}
