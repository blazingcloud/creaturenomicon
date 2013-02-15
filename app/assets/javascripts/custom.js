function initialize_input(data, input_field, hidden_field, list_text) {
  input_field.autocomplete({
    source: data
  });

  input_field.keydown(function(e) {

    if(e.keyCode == 13){
      e.preventDefault();
      var input_val = $(this).val();

      //is the input an existing creature?
      if($.inArray(input_val, data) > -1) {
        //manipulate display of friends_list
        var _text = list_text.text();

        //add to text if not already exist in list?
        if(!_text.match(RegExp(input_val, "i"))) {
          list_text.text(_text + ' ' + input_val);
        };

      } else {
        alert('Can only friend an existing creature.');
      };

      //set the hidden field to a text string to save, so that it is not an array
      hidden_field.val(list_text.text())

      //reset input to ''
      $(this).val(''); 
    }
  });
};

(function($) {
  $(function() {
    // Run on DOM ready

  });

  //Run right away
})(jQuery);