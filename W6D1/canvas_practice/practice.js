document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas');
    const ctx = canvas.getContext('2d'); 

//phase 2
    // ctx.fillStyle = "red";
    // ctx.fillRect(50, 50, 150, 100);

//phase 3
    // ctx.beginPath();
    // ctx.arc(150, 150, 50, 0, 2 * Math.PI);
    // ctx.fillStyle = "blue";
    // ctx.fill()

//phase 4
    ctx.beginPath();
    ctx.arc(150, 150, 50, 0, 2 * Math.PI);
    ctx.arc(240, 150, 50, 0, 2 * Math.PI);
    ctx.arc(150, 150, 20, 0, 2 * Math.PI);
    ctx.strokeStyle = "black";
    ctx.stroke();
});

