$(function (){
    $('h2').hide().slideDown();
    var $li = $('li');
    $li.hide().each(function (index){
        $(this).delay(time: 700 * index).fadeif(700);
    });
    $li.on('click',function (){
        $(this).fadeOut(700);
    });
});