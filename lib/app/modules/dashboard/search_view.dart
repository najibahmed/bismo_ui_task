import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyality_card_wallet/app/card_model.dart';
import 'package:loyality_card_wallet/app/route/route_helper.dart';

import '../../helper/data.dart';
import '../../utils/dimension.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  // List to display (filtered)
  List<CardModel> _filteredItems = [];

  // Search query
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    // Initialize the filtered list to display all items
    _filteredItems = cardJsonItems.map((item)=>CardModel.fromJson(item)).toList();
  }

  // Function to filter the list based on the search query
  void _filterItems(String query) {
    final searchList=cardJsonItems.map((item)=>CardModel.fromJson(item)).toList();
    final filtered = searchList
        .where((item) => item.title!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      _searchQuery = query;
      _filteredItems = filtered;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(height: Dimension.height10*3,),
            searchHeader(),
            SizedBox(height: 6,),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: Dimension.height10*2.5),
                child: _filteredItems.isEmpty
                    ? Center(
                  child: Text(
                    'No items found',
                    style: TextStyle(fontSize: 16),
                  ),
                )
                    : ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _filteredItems.length,
                  itemBuilder: (context, index) {
                    CardModel itemCard=_filteredItems[index];
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ListTile(
                        tileColor: Colors.grey[200],
                        onTap: () {
                          Get.toNamed(RouteHelper.getCardAdd(),arguments:itemCard );
                        },
                        leading: SizedBox(
                          height: Dimension.height10*4,
                          width: Dimension.width10*4,
                          child: Image.asset(itemCard.image!),
                        ),
                        title: Text(itemCard.title!),
                        subtitle: Text(itemCard.cardType!),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
  Widget searchHeader() {
    return Row(
      children: [
        IconButton(onPressed: (){
         Get.toNamed(RouteHelper.initial);
        }, icon: Icon(Icons.arrow_back)),
        Expanded(
          child: TextField(
            onChanged: (value) => _filterItems(value),
              decoration: const InputDecoration(
                isDense: true,
                  labelText: "Search",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(color: Colors.black54, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(color: Colors.black26, width: 2.0),
                  ),
                  suffixIcon: Icon(Icons.search)
              )
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_list_alt,
                color: Colors.black54,
                size: Dimension.height10 * 3,
              )),
        ),
      ],
    );
  }

}
