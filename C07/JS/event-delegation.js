$(function (){
    var listItem, itemStartus, eventType;
    $('ul').on(
        'click mouseover',
        ':not(#four)',
        {status: 'important'},
        function (e){
     listItem = 'Item: ' + e.target.textContent + '<br/>';
     itemStartus = 'Status:' +e.data.status + <br/>;
     eventType = 'Event:' + e.type;
     $('#notes').html(listItem + itemStartus + eventType);
        }
    );
});