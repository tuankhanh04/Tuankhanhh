var itemTwo = document.getElementById('two');
var elText = itemTwo.firstChild.nodeValue;
elText = elText.replace(searchVale: 'pine nuts', replaceValue: 'kale');
itemTwo.firstChild.nodeValue = elText;
