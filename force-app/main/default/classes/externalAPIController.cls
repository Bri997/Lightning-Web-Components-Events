public with sharing class externalAPIController {
  @AuraEnabled(cacheable=true)
  public static String sendParams(
    String fromCurrency,
    Decimal amount,
    String toCurrency
  ) {
    // String response =
    //   'You entered "' +
    //   wrapper.from +
    //   '" as String, and "' +
    //   wrapper.amount +
    //   '" as Integer value. The list contained ' +
    //   wrapper.to +
    //   ' items.';
    // return response;

    String response =
      'From ' +
      fromCurrency +
      ' amount ' +
      amount +
      ' To ' +
      toCurrency;
    return response;
  }
}

//     try {
//       // Instantiate a new http object
//       Http h = new Http();

//       // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
//       HttpRequest req = new HttpRequest();

//       req.setEndpoint(
//         'https://api.apilayer.com/fixer/convert?to=eur&from=usd&amount=1'
//       );
//       req.setMethod('GET');
//       req.setHeader('apikey', '');

//       // Send the request, and return a response
//       HttpResponse res = h.send(req);
//       system.debug(res.getBody());
//       return res.getBody();
//     } catch (Exception e) {
//       throw new AuraHandledException(e.getMessage());
//     }

