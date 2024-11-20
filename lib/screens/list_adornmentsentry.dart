import 'package:flutter/material.dart';
import 'package:old_world_adornments/models/adornments_entry.dart';
import 'package:old_world_adornments/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:old_world_adornments/screens/adornments_detail.dart';

class AdornmentsEntryPage extends StatefulWidget {
  const AdornmentsEntryPage({super.key});

  @override
  State<AdornmentsEntryPage> createState() => _AdornmentsEntryPageState();
}

class _AdornmentsEntryPageState extends State<AdornmentsEntryPage> {
  Future<List<AdornmentsEntry>> fetchAdornments(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');
    var data = response;
    List<AdornmentsEntry> adornmentsList = [];
    for (var d in data) {
      if (d != null) {
        adornmentsList.add(AdornmentsEntry.fromJson(d));
      }
    }
    return adornmentsList;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adornments Entry List',
          style: TextStyle(
            fontFamily: 'Georgia',
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 176, 171, 156),
        elevation: 0,
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchAdornments(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'No adornments data available.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF5A5A5A),
                      fontFamily: 'Georgia',
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdornmentsDetailPage(
                          item: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F7F2),
                      border: Border.all(
                        color: const Color(0xFFD4C2A8),
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${snapshot.data![index].fields.name}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Georgia',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Description: ${snapshot.data![index].fields.description}",
                          style: const TextStyle(fontFamily: 'Georgia'),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Price: ${snapshot.data![index].fields.price}",
                          style: const TextStyle(fontFamily: 'Georgia'),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Size: ${snapshot.data![index].fields.size}",
                          style: const TextStyle(fontFamily: 'Georgia'),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Color: ${snapshot.data![index].fields.color}",
                          style: const TextStyle(fontFamily: 'Georgia'),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Quantity: ${snapshot.data![index].fields.quantity}",
                          style: const TextStyle(fontFamily: 'Georgia'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}