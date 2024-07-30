// funcionamento do slider da home

let count = 1;
document.getElementsById("radio1").cheked = true;

setInterval( function(){
    nextImage();
}, 5000)

function nextImage(){
    count++;
    if(count > 4){
        count = 1;
    }
    document.getElementsById("radio"+count).cheked = true;
}

//fim