function init() {
	document.addEventListener("deviceready",onDeviceReady, false);
}

function onDeviceReady() {
	navigator.notification.beep(1);
}

function rejestrowanie() {
	window.location.assign("formularzrejestracji.html")
}

function logowanie() {
	window.location.assign("logowanie.html")
}

function zalogujSie() {
	window.location.assign("aliexpressrecenzje.html")
}

