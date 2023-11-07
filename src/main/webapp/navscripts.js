let isLogged = sessionStorage.getItem("LoggedUser");
$(document).ready(function () {
	if (isLogged) {
		$("#login").text(isLogged);
		$("#login").click(function () {
			window.location.href = "edit_profile-page/index.jsp";
		});
	} else {
		$("#login").click(function () {
			window.location.href = "/login-page/login.jsp";
		});
	}
});
function redirecionarParaProcurando() {
	window.location.href = "register-page/register.jsp";
}

function redirecionarParaEncontrados() {
	window.location.href = "found-page/index.jsp";
}

function redirecionarParaFerramentas() {
	window.location.href = "ferramentas-page/index.jsp";
}

function redirecionarParaAnuncie() {
	window.location.href = "telasAnuncio/TelaAnuncio1/index.jsp";
}
