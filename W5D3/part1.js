//mystery scoping
function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
} //in block

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
} //in block, out of block

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
} //syntax error

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
} //in block, out of block

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
}//syntax error


//madLib
function madLib(verb, adj, noun) {
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`
}
// console.log(madLib('make', 'best', 'guac'))

//isSubstring
function isSubstring(searchString, subString) {
    return searchString.split(" ").includes(subString)
}
// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(arr) {
    new_arr = []
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] % 15 != 0 && (arr[i] % 3 === 0 || arr[i] % 5 === 0)) {
            new_arr.push(arr[i]);
        }
    }
    return new_arr;
}
// console.log(fizzBuzz([1, 3, 5, 7, 15, 30, 33]));

// sumOfNPrimes
function isPrime(num) {
    if (num < 2) {
        return false;
    }

    let i = 2;
    while (i < num) {
        if (num % i === 0) {
            return false;
        }
        i++;
    }

    return true;
}

function sumOfNPrimes(n) {
    let sum = 0;
    let count = 0;
    let i = 0;

    while (count < n) {
        if (isPrime(i)) {
            count += 1;
            sum += i;
        }
        i++;
    }

    return sum;
}
// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));
