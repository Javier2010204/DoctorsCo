jQuery(function() {
  return $('#consultation_patient_name').autocomplete({
    source: $('#consultation_patient_name').data('autocomplete-source')
  });
});
