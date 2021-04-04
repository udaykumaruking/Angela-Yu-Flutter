import 'network.dart';

const apiKey = 'BF709424-0E17-4827-ADE8-8672E585584A';
const starterUrl = 'https://rest.coinapi.io/v1/exchangerate/BTC/';

class PriceDetector {
  Future<dynamic> getPrice(String currency) async {
    NetworkHelper networkHelper =
        NetworkHelper('$starterUrl$currency?apikey=$apiKey');
    var priceData = await networkHelper.getData();
    var finalPrice = priceData['rate'];
    return finalPrice;
  }
}
