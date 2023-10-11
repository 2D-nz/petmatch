function toggleText(cardNumber) {
    var hiddenText = document.getElementById("hiddenText" + cardNumber);

    if (hiddenText.style.display === "none" || hiddenText.style.display === "") {
        hiddenText.style.display = "block";
    } else {
        hiddenText.style.display = "none";
    }
}
