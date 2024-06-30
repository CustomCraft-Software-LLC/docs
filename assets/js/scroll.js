window.addEventListener('scroll', function() {
    var sidebar = document.querySelector('.sidebar');
    if (window.scrollY > 0) {
        sidebar.classList.add('scrolled');
    } else {
        sidebar.classList.remove('scrolled');
    }
});