import 'package:bitcoin_ticker/prices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  String finalSelectedCurrency;

  DropdownButton androidDropdown() {
    List<DropdownMenuItem<String>> dropDownItems = [];

    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropDownItems.add(newItem);
    }
    // return dropDownItems;
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropDownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
        });
        getData();
        finalSelectedCurrency = selectedCurrency;
      },
    );
  }

  CupertinoPicker cupertinoIosPicker() {
    List<Text> pickerItems = [];
    for (String curr in currenciesList) {
      // pickerItems.add(curr);
      var newItem = Text(curr);
      pickerItems.add(newItem);
    }
    // return pickerItems;
    return CupertinoPicker(
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedCurrency) {
        print(selectedCurrency);
        finalSelectedCurrency = currenciesList[selectedCurrency];
        print(finalSelectedCurrency);
        getData();
      },
      children: pickerItems,
    );
  }

  // String btcValue = '?';
  // String ethValue = '?';
  // String ltcValue = '?';
  // void getData() async {
  //   try {
  //

  //     double allValuesbtc =
  //         await priceDetector.getPriceBtc(finalSelectedCurrency.toString());
  //     double allValueseth =
  //         await priceDetector.getPriceEth(finalSelectedCurrency.toString());
  //     double allValuesltc =
  //         await priceDetector.getPriceLtc(finalSelectedCurrency.toString());
  //     setState(() {
  //       btcValue = allValuesbtc.toStringAsFixed(0);
  //       ltcValue = allValuesltc.toStringAsFixed(0);
  //       ethValue = allValueseth.toStringAsFixed(0);
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  Map<String, String> coinValues = {};
  //7: Figure out a way of displaying a '?' on screen while we're waiting for the price data to come back. First we have to create a variable to keep track of when we're waiting on the request to complete.
  bool isWaiting = false;

  void getData() async {
    //7: Second, we set it to true when we initiate the request for prices.
    isWaiting = true;
    try {
      PriceDetector priceDetector = PriceDetector();
      //6: Update this method to receive a Map containing the crypto:price key value pairs.
      var data = await priceDetector.getPrice(selectedCurrency);
      //7. Third, as soon the above line of code completes, we now have the data and no longer need to wait. So we can set isWaiting to false.
      isWaiting = false;
      setState(() {
        coinValues = data;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    print(selectedCurrency);
    return Scaffold(
      // PriceDetector.getPrice
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
                child: Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      '1 BTC = ${coinValues['BTC']}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
                child: Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      '1 ETH = ${coinValues['ETH']}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
                child: Card(
                  color: Colors.lightBlueAccent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                    child: Text(
                      '1 LTC = ${coinValues['LTC']}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? androidDropdown() : cupertinoIosPicker(),
          ),
        ],
      ),
    );
  }
}
