const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits() {
    reader.question('Would you like some tea?', function(answer1) {
        console.log(`You replied ${answer1}.`);
    });

    reader.question('Would you like some biscuits?', function(answer2) {
        console.log(`You replied ${answer2}.`);
    });

    function(response2) {
        console.log(`You replied ${response2}.`); 
        const firstAns = (answer1 === 'yes') ? 'do' : 'don\'t'; 
        const secondAns = (answer2 === 'yes') ? 'do' : 'don\'t'; 
        console.log(`So you ${firstAns} want tea and you ${secondAns} want biscuits.`); 
        reader.close()};
    };