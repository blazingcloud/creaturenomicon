beforeEach(function() {
  this.addMatchers({
    toBePlaying: function(expectedSong) {
      var player = this.actual;
      return player.currentlyPlayingSong === expectedSong
          && player.isPlaying;
    }
  })
});


var TestResponses = {
  search: {
    success: {
      status: 200,
      responseText: '{"response":{"groups":[{"type":"nearby","name":"Nearby","items":[{"id":"4bb9fd9f3db7b7138dbd229a","name":"Pivotal Labs","contact":{"twitter":"pivotalboulder"},"location":{"address":"1701 Pearl St.","crossStreet":"at 17th St.","city":"Boulder","state":"CO","lat":40.019461,"lng":-105.273296,"distance":0},"categories":[{"id":"4bf58dd8d48988d124941735","name":"Office","pluralName":"Offices","icon":"https://foursquare.com/img/categories/building/default.png","parents":["Homes, Work, Others"],"primary":true}],"verified":false,"stats":{"checkinsCount":223,"usersCount":62},"hereNow":{"count":0}},{"id":"4af2eccbf964a5203ae921e3","name":"Laughing Goat Café","contact":{},"location":{"address":"1709 Pearl St.","crossStreet":"btw 16th & 17th","city":"Boulder","state":"CO","postalCode":"80302","country":"USA","lat":40.019321,"lng":-105.27311982,"distance":21},"categories":[{"id":"4bf58dd8d48988d1e0931735","name":"Coffee Shop","pluralName":"Coffee Shops","icon":"https://foursquare.com/img/categories/food/coffeeshop.png","parents":["Food"],"primary":true},{"id":"4bf58dd8d48988d1a7941735","name":"College Library","pluralName":"College Libraries","icon":"https://foursquare.com/img/categories/education/default.png","parents":["Colleges & Universities"]}],"verified":false,"stats":{"checkinsCount":1314,"usersCount":517},"hereNow":{"count":0}},{"id":"4ca777a597c8a1cdf7bc7aa5","name":"Ted\'s Montana Grill","contact":{"phone":"3034495546","formattedPhone":"(303) 449-5546","twitter":"TedMontanaGrill"},"location":{"address":"1701 Pearl St.","crossStreet":"17th and Pearl","city":"Boulder","state":"CO","postalCode":"80302","country":"USA","lat":40.019376,"lng":-105.273311,"distance":9},"categories":[{"id":"4bf58dd8d48988d1cc941735","name":"Steakhouse","pluralName":"Steakhouses","icon":"https://foursquare.com/img/categories/food/steakhouse.png","parents":["Food"],"primary":true}],"verified":true,"stats":{"checkinsCount":197,"usersCount":150},"url":"http://www.tedsmontanagrill.com/","hereNow":{"count":0}},{"id":"4d3cac5a8edf3704e894b2a5","name":"Pizzeria Locale","contact":{},"location":{"address":"1730 Pearl St","city":"Boulder","state":"CO","postalCode":"80302","country":"USA","lat":40.0193746,"lng":-105.2726744,"distance":53},"categories":[{"id":"4bf58dd8d48988d1ca941735","name":"Pizza Place","pluralName":"Pizza Places","icon":"https://foursquare.com/img/categories/food/pizza.png","parents":["Food"],"primary":true}],"verified":false,"stats":{"checkinsCount":511,"usersCount":338},"hereNow":{"count":2}},{"id":"4d012cd17c56370462a6b4f0","name":"The Pinyon","contact":{},"location":{"address":"1710 Pearl St.","city":"Boulder","state":"CO","country":"USA","lat":40.019219,"lng":-105.2730563,"distance":33},"categories":[{"id":"4bf58dd8d48988d14e941735","name":"American Restaurant","pluralName":"American Restaurants","icon":"https://foursquare.com/img/categories/food/default.png","parents":["Food"],"primary":true}],"verified":true,"stats":{"checkinsCount":163,"usersCount":98},"hereNow":{"count":1}}]}]}}'
    }
  }
};