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

//Top雪を降らすbyHashikawa
var atsnow = new ATSnow({
  classname : 'snow',
  count : 100,
  interval : 40,
  maxSize : 10,
  minSize : 1,
  leftMargin : 10,
  rightMargin : 20,
  bottomMargin : 0,
  maxDistance : 10,
  minDistance : 1
});
atsnow.load();