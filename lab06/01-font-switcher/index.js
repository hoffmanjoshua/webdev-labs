const makeBigger = () => {
	const fontSize = document.querySelector("body").getAttribute("aria-font-size");
	document.querySelector("div.content").style.fontSize = `${parseFloat(fontSize) + 0.1}em`;
	document.querySelector("body").setAttribute("aria-font-size", String(parseFloat(fontSize) + 0.1));
};

const makeSmaller = () => {
	const fontSize = document.querySelector("body").getAttribute("aria-font-size");
	document.querySelector("div.content").style.fontSize = `${parseFloat(fontSize).toFixed(2) - 0.1}em`;
	document.querySelector("body").setAttribute("aria-font-size", String(parseFloat(fontSize).toFixed(2) - 0.1));
};

document.querySelector("#a1").addEventListener("click", makeBigger);
document.querySelector("#a2").addEventListener("click", makeSmaller);
