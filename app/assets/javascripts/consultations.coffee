$(document).ready ->
  return $("#consultation_patient_name").autocomplete
      source: $('#consultation_patient_name').data('autocomplete-source')
      console.log($(this).data('autocomplete-source'))