let count = 1;
document.getElementsByClassName("slide").cheked = true;

setInterval( function(){
    nextImage();
}, 2000)

function nextImage(){
    count++;
    if(count > 4){
        count = 1;
    }
    document.getElementsByClassName("slide"+count).cheked = true;
}