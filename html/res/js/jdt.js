
	jQuery(document).ready(function($){
		$(".guidelist li").hover(
			function () {
				$(this).attr("class", "mouseon");
			  },
			  function () {
				$(this).attr("class", "mouseout");
			  }
		);
		$(".ftoollist li").mouseover(function(){
			$(this).siblings().removeClass("on");
			$(this).addClass("on");
			var preNumber=$(this).prevAll().size();
			$(".fimglist li").removeClass("onpre");
			$(".fimglist li:nth-child("+preNumber+")").addClass("onpre");
			var margin = 990;
			margin = margin *preNumber; 
			margin = margin * -1;
			$(".fimglist").stop().animate({marginLeft: margin + "px"}, {duration: 500});
		});
	});
	
	
	
	
	
	var timeout = 500;
	var closetimer = 0;
	var menuitem = 0;
	function mopen(id) {
		mcancelclosetime();
		if (menuitem)
			menuitem.style.visibility = 'hidden';
		menuitem = document.getElementById(id);
		menuitem.style.visibility = 'visible';

	}
	function mclose() {
		if (menuitem)
			menuitem.style.visibility = 'hidden';
	}
	function mclosetime() {
		closetimer = window.setTimeout(mclose, timeout);
	}
	function mcancelclosetime() {
		if (closetimer) {
			window.clearTimeout(closetimer);
			closetimer = null;
		}
	}
	document.onclick = mclose;