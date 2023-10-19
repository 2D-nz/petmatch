sessionStorage.setItem("name", "Cleber");
sessionStorage.setItem("isLogged", "false");

console.log()
let isLogged = sessionStorage.getItem("isLogged");
let Name = sessionStorage.getItem("name");
$(document).ready(function () {
	if (isLogged == "true") {
		$("#login").text(Name);
		$("#login").click(function () {
			window.location.href = "edit_profile-page/index.html";
		});
	} else {
		$("#login").click(function () {
			window.location.href = "login-page/login.jsp";
		});
	}
});
function redirecionarParaProcurando() {
	window.location.href = "register-page/register.jsp";
}

function redirecionarParaEncontrados() {
	window.location.href = "found-page/index.html";
}

function redirecionarParaFerramentas() {
	window.location.href = "ferramentas-page/index.html";
}

function redirecionarParaAnuncie() {
	window.location.href = "telasAnuncio/TelaAnuncio1/index.jsp";
}

