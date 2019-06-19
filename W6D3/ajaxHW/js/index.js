console.log("Hello from the JavaScript console!");

//ajax request
$.ajax({
    type: 'get',
    url: 'http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b',
    success(data) {
        console.log('The weather in New York is...');
        console.log(data);
    },
    error() {
        console.log('An error occured.');
    },
});

//outside of ajax request
console.log('Lets test the order of execution');