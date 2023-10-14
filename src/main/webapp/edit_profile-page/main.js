$(document).ready(function () {
	$(".pfp #pencil").mouseenter(function () {
		$(".pfp #pfp").addClass("opaco");
	});
	$(".pfp #pencil").mouseleave(function () {
		$(".pfp #pfp").removeClass("opaco");
	});
});
