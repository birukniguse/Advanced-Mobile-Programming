import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'Booking.dart';
import 'helper.dart';
// import 'helper.dart';
// import 'models/booking.dart';
import 'dart:convert' as convert;

// void fetchAlbum() async {
//   final response = await http.get(
//     Uri.parse('http://localhost:8000/bookings'),
//     // Send authorization headers to the backend.
    
//   );
//   final responseJson = jsonDecode(response.body);
//   print("people " + responseJson);
//   // return Album.fromJson(responseJson);
// }

// Future<Stream<Booking>> getBookings() async {

//   User _user = userRepo.currentUser.value;
//   // User _user = userRepo.currentUser.value;
//   if (_user.apiToken == null) {
//     return new Stream.value(null);
//   }

//   final String _apiToken = 'api_token=${_user.apiToken}&';
//   final String url = "given";
//   final client = new http.Client();
//   final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
//   return streamedRest.stream
//       .transform(utf8.decoder)
//       .transform(json.decoder)
//       .map((data) => Helper.getData(data))
//       .expand((data) => (data as List))
//       .map((data) {
//     return Booking.fromJSON(data);
//   });
// }

// Future<Booking> book(Booking booking, bool reset) async {
//   User _user = userRepo.currentUser.value;
//   if (_user.apiToken == null) {
//     return Booking();
//   }
//   Map<String, dynamic> decodedJSON = {};
//   final String _apiToken = 'api_token=${_user.apiToken}';
//   booking.userId = _user.id;
//   final String url =
//       '${GlobalConfiguration().getString('api_base_url')}bookings?$_apiToken';
//   final client = new http.Client();
//   final response = await client.post(
//     url,
//     headers: {HttpHeaders.contentTypeHeader: 'application/json'},
//     body: json.encode(booking.toMap()),
//   );
//   try {
//     decodedJSON = json.decode(response.body)['data'] as Map<String, dynamic>;
//   } on FormatException catch (e) {
//     print(e);
//   }
//   return Booking.fromJSON(decodedJSON);
// }