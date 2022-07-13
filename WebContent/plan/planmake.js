function filter() {
	
	var value, name, item, i;
	
	value = document.getElementById("value").value.toUpperCase();
	item = document.getElementsByClassName("item");
	
	for( i = 0; i < item.length; i++ ) {
		name = item[i].getElementsByClassName("name");
		if( name[0].innerHTML.toUpperCase().indexOf(value) > -1 ) {
			item[i].style.display = "block";
		} else {
			item[i].style.display = "none";
		}
	}
}