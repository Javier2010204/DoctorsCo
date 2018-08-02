$(document).ready ->
  return $("#appoiment_patient_name").autocomplete
      source: $('#appoiment_patient_name').data('autocomplete-source')