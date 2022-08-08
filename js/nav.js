setTimeout(function () {
    setAdNav();
}, 300);

setTimeout(function () {
    setNav();
}, 300);

function setAdNav() {
    document.querySelector('.ad-navbar').innerHTML = '<a href="../index.html"> <img src="../img/dark-logo.png" class="brand-logo" alt=""></a>' +
        '<div class="nav-items">\n' +
        '            <a>\n' +
        '               <img id="search" src="https://img.icons8.com/ios-filled/60/000000/search--v1.png"/>\n' +
        '            </a>\n' +
        '            <a>\n' +
        '                <img src="https://img.icons8.com/fluency-systems-filled/60/000000/guest-male.png"/>'+
        '            </a>\n' +
        '        </div>';
}

function setNav() {
    document.querySelector('.navbar').innerHTML = '<a href="../index.html"> <img src="../img/dark-logo.png" class="brand-logo" alt=""></a>\n' +
        '        <ul class="links-container">\n' +
        '            <li class="link-item"><a href="../html/cus_products.html" class="link">Sản phẩm</a></li>\n' +
        '            <li class="link-item"><a href="../html/cus-insurance.html" class="link">Chính sách bảo hành</a></li>\n' +
        '            <li class="link-item"><a href="../html/cus_aboutUs.html" class="link">Về chúng tôi</a></li>\n' +
        '        </ul>\n' +
        '        <div class="nav-items">\n' +
        '            <a>\n' +
        '               <img id="search" src="https://img.icons8.com/ios-filled/60/000000/search--v1.png"/>\n' +
        '            </a>\n' +
        '            <a>\n' +
        '                <img src="https://img.icons8.com/ios-filled/60/000000/paid-bill.png"/>\n' +
        '            </a>\n' +
        '            <a href="../html/cus_cart.html">\n' +
        '                <p id="numOfChosenProduct">12+</p>\n' +
        '                <img src="https://img.icons8.com/ios-glyphs/100/000000/shopping-cart--v1.png"/>\n' +
        '            </a>\n' +
        '        </div>';
}