$(function (){
    var lisHeight = $('#page').height();
    $('ul').append('<p>Height:' + lisHeight +'px</p>');
    $('li').width('50%');
    $('li#one').width(125);
    $('li#two').width('75%');
});