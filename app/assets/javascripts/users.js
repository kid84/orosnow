# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(function(){
  var radio = $('div.radio-group');
  $('input', radio).css({'opacity': '0'})
  //checkedだったら最初からチェックする
  .each(function(){
    if ($(this).attr('checked') == 'checked') {
      $(this).next().addClass('checked');
    }
  });
  //クリックした要素にクラス割り当てる
  $('label', radio).click(function() {
    $(this).parent().parent().each(function() {
      $('label',this).removeClass('checked'); 
    });
    $(this).addClass('checked');
  });
});
