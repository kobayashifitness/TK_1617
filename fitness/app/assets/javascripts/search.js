$('#slider_age').slider({
  values:  [<%= @min_age %>,<%= @max_age %>],
  min: 18,
  max: 100,
  step: 1,
  range: true,
  animate: 'slow',
  slide: function(event, ui){
    $('#min_age').val(ui.values[0]);
    $('#max_age').val(ui.values[1]);
  }
});

$('#slider_bench').slider({
  values:  [<%= @min_weight_bench %>,<%= @max_weight_bench %>],
  min: 0,
  max: 200,
  step: 5,
  range: true,
  animate: 'slow',
  slide: function(event, ui){
    $('#min_weight_bench').val(ui.values[0]);
    $('#max_weight_bench').val(ui.values[1]);
  }
});

$('#slider_full').slider({
  values:  [<%= @min_weight_full %>,<%= @max_weight_full %>],
  min: 0,
  max: 200,
  step: 5,
  range: true,
  animate: 'slow',
  slide: function(event, ui){
    $('#min_weight_full').val(ui.values[0]);
    $('#max_weight_full').val(ui.values[1]);
  }
});

$('#slider_ded').slider({
  values:  [<%= @min_weight_ded %>,<%= @max_weight_ded %>],
  min: 0,
  max: 200,
  step: 5,
  range: true,
  animate: 'slow',
  slide: function(event, ui){
    $('#min_weight_ded').val(ui.values[0]);
    $('#max_weight_ded').val(ui.values[1]);
  }
});
