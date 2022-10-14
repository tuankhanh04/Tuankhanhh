var firstItem = document.getElementById('one');
if (firstItem.hasAttribute('class')){
    var attr = firstItem.getAttribute('class');
    var el = document.getElementById('scrptResults');
    el.innerHTML = '<p> The first item has a class name: ' + attr + '<p/>';
}