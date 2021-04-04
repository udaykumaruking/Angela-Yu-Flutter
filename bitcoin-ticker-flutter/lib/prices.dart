import 'package:bitcoin_ticker/coin_data.dart';

import 'network.dart';

const apiKey = 'BF709424-0E17-4827-ADE8-8672E585584A';
const starterUrl = 'https://rest.coinapi.io/v1/exchangerate';
Map<String, String> cryptoPrices = {};

class PriceDetector {
  Future<dynamic> getPrice(String currency) async {
    for (String crypto in cryptoList) {
      String requestURL = '$starterUrl/$crypto/$currency?apikey=$apiKey';
      NetworkHelper networkHelper = NetworkHelper(requestURL);
      var priceData = await networkHelper.getData();
      var finalPrice = priceData['rate'];
      cryptoPrices[crypto] = finalPrice.toStringAsFixed(0);
    }
    return cryptoPrices;
  }
}
