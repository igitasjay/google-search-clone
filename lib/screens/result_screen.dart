import 'package:flutter/material.dart';
import 'package:google_browser/color.dart';
import 'package:google_browser/services/api_services.dart';
import 'package:google_browser/widgets/search_header.dart';
import 'package:google_browser/widgets/search_tabs.dart';

import '../widgets/result_screen_footer.dart';
import '../widgets/search_result.dart';

class ResultScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const ResultScreen({
    super.key,
    required this.searchQuery,
    required this.start,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      color: Colors.blue,
      title: searchQuery,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // search header
              const SearchHeader(),
              // tabs for news, images, etc
              Padding(
                padding: EdgeInsets.only(left: size.width < 768 ? 10 : 150.0),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SearchTabs(),
                ),
              ),
              const Divider(
                height: 0,
                thickness: 0.5,
              ),
              // search result components
              FutureBuilder(
                future: ApiService().fetchData(
                  queryTerm: searchQuery,
                  start: start,
                ),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: size.width < 768 ? 10 : 150,
                            top: 12,
                          ),
                          child: Text(
                            'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds).',
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data?['items'].length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left: size.width < 768 ? 10 : 150,
                                  top: 10,
                                ),
                                child: SearchResult(
                                  description: snapshot.data?['items'][index]
                                      ['snippet'],
                                  linkToGo: snapshot.data?['items'][index]
                                      ['formattedUrl'],
                                  text: snapshot.data?['items'][index]['title'],
                                  link: snapshot.data?['items'][index]
                                      ['formattedUrl'],
                                ),
                              );
                            }),
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  if (start != '0') {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ResultScreen(
                                          searchQuery: searchQuery,
                                          start: (int.parse(start) - 10)
                                              .toString(),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: const Text(
                                  '< Prev',
                                  style: TextStyle(color: blueColor),
                                ),
                              ),
                              const SizedBox(width: 30),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ResultScreen(
                                        searchQuery: searchQuery,
                                        start:
                                            (int.parse(start) + 10).toString(),
                                      ),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Next >',
                                  style: TextStyle(color: blueColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        // search footer
                        const ResultScreenFooter()
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              //pagination buttons
            ],
          ),
        ),
      ),
    );
  }
}
