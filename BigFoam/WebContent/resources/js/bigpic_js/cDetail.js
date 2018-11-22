$(document).ready(function() {
   $("li.single-storey").css("background", "hsla(" + Math.floor(Math.random() * (360)) + ", 75%, 58%, 1)");
   });

var a = new Array();

	$('li').each(function(index) {
	    text = $(this).text();
	    if($.inArray(text, a)!=-1){
	        $(this).closest('li').hide();
	    }else{
	        a.push(text);
	    }
	});