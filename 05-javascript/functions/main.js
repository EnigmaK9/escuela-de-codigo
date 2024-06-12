        var inputUser = prompt("Type in the value of a: ");
        var inputUser2 = prompt("Type in the value of b: ");
        var a = parseInt(inputUser);
        var b = parseInt(inputUser2);
        let add_five_to_a = addFive(b);
        let a_plus_seven = sum(a, 7);
        let sum_of_a_plus_b = sum(a,b);
        
        
        alertBox(`The sum of ${a} and 7 is: ${a_plus_seven}`);
        alertBox(`The sum of ${b} + 5 is: ${add_five_to_a}`);
        alertBox(`The sum of ${a} + ${b} is: ${sum_of_a_plus_b}`);
        
        function sum(x, y) {
            return x + y;
        }

        function alertBox(text) {
            window.alert(text);
        }

        function addFive(x) {
            let y = x + 5;
            return y;