
onload = numberenter_prompt()

function numberenter_prompt() {
  
    var numberinput = prompt("Please enter a number between 2 and 10:", "")


    if (numberinput < 2 || numberinput > 10) {
        document.writeln("<h2>Your input is " + numberinput + ". The valid input number is between 2 and 10. Please reload this page and try again.")
    }
    else {
        document.writeln("<h2>Your input number is " + numberinput + " </h2>")
        var timecount = 0
        var result = numberinput
        while (result > 0.000001) {
            result /= 2
            timecount += 1
        }
        document.writeln("<h2>The number of times to divide the number " + numberinput + " by 2 to get a value less than one millionth is " + timecount + "</h2>")

        var stars = "<div>"
        var lineNumber = numberinput
        for (var a = 0;a < lineNumber; a++) {
            for (var b = lineNumber-a; b > 0; b--) {
                stars += "*"
            }
            
            stars += "<br>"
        }
        document.writeln(stars + "</div>")


    }
}