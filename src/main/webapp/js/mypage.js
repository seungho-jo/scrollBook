/**
 * 
 */
var listImg = document.querySelectorAll("#list ul li img");
var li = document.querySelectorAll("#list ul li");
function click(idx){
	listImg[idx].onclick = function(){
		for(var i=0;i<li.length;i++){
			li[i].style.borderBottom = "none";
		}
		li[idx].style.borderBottom = "1px solid black";
	}
}
for(var idx=0;idx<listImg.length;idx++){
	click(idx);
}