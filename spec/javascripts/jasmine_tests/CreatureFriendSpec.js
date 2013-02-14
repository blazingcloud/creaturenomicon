// 1) add friend via pressing return, and add list to hidden field and also update visual list 
// of creature's friends

describe("when user presses enter, #friends is updated with new friend name", 
  function (){

  beforeEach(function() {
    alert($(#friends_input).val());
  };

  it("should add friends name to list after pressing enter", function (){

  });

  xit("should auto complete", function() {

  });

  xit("should not update text when text already there", function() {

  });

  xit("should only allow user to add existing creatures as friends". function(){

  });

});

xdescribe("when user clicks update, then friends list is passed in through the array", 
  function(){
  var request;
  var onSuccess, onFailure;

  beforeEach(function() {
    jasmine.Ajax.useMock();

    onSuccess = jasmine.createSpy('onSuccess');
    onFailure = jasmine.createSpy('onFailure');

  };
});
// 2) add friend via adding friend clicking a button to send AJAX request