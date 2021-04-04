import 'network.dart';

const apiKey = 'BF709424-0E17-4827-ADE8-8672E585584A';
const starterUrl = 'https://rest.coinapi.io/v1/exchangerate/BTC/INR';

class PriceDetector {
  Future<dynamic> getPrice() async {
    NetworkHelper networkHelper = NetworkHelper('$starterUrl?apikey=$apiKey');
    var priceData = await networkHelper.getData();
    var finalPrice = priceData['rate'];
    return finalPrice;
  }
}
