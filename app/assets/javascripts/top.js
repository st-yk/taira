const pics_src = ["http://sushitaira.jp//wp-content/uploads/photo_sushi_01.jpg","http://sushitaira.jp/wp-content/uploads/photo_counter.jpg"];
let num = -1;


function slideshow_timer(){
  if (num === 2){
    num = 0;
  }
else{
  num ++;
}
  document.getElementById("mypic").src = pics_src[num];

}

setInterval(slideshow_timer, 1000);


