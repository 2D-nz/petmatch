function validaEmail(email){
    var re = /\S+@\S+\.\S+/;
    if (re.test(email)) {
        return true;
    } else {
        alert("E-mail inválido!");
        return false;
    }
}