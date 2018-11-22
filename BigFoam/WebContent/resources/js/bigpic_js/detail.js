/**
 * 
 */

function goBack() {
	window.history.back();
}
$(function() {

	$('.commentBoxTop').click(function() {
		$('.commentBoxMid').toggle("slow");
	});
});