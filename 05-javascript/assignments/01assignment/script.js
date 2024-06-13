function pow(x, n) {
    let result = 1;
    for (let i = 0; i < n; i++) {
        result *= x;
    }
    return result;
}

function calculatePow() {
    const base = document.getElementById('base').value;
    const exponent = document.getElementById('exponent').value;
    const result = pow(base, exponent);
    document.getElementById('result').innerText = `Resultado: ${result}`;
}
