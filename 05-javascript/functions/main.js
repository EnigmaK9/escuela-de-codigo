var inputUser = prompt("Ingresa un valor para sumar:");
var a = parseInt(inputUser);

let result = sum(a, 7);
alertBox("Este es un ejemplo");
alertBox(${result});

var inputUser2 = prompt("Ingresa tu valor x: ");
var b = parseInt(inputUser2);
let c = addFive(b);
alertBox(El resultado de ${b} + 5 = ${c});

function sum(x, y) {
    return x + y;
}

function alertBox(text) {
    window.alert(text);
}

function addFive(x) {
    let y = x + 5;
    return y;
}