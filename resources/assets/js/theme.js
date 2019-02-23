var callback = () => {
    document.querySelector('.nav-button').addEventListener("click", () => {
        document.querySelector('body').classList.toggle('nav-open')
    });
};

if (document.readyState === "complete" || (document.readyState !== "loading" && !document.documentElement.doScroll)) {
    callback();
} else {
    document.addEventListener("DOMContentLoaded", callback);
} 