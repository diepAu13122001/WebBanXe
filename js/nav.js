const createNav = () => {
    let nav = document.querySelector('.navbar');

    nav.innerHTML = `
                     <a href="index.html"> <img src="img/dark-logo.png" class="brand-logo" alt=""></a>
        <ul class="links-container">
            <li class="link-item"><a href="index.html" class="link">Home</a></li>
            <li class="link-item"><a href="honda.html" class="link">Honda</a></li>
            <li class="link-item"><a href="suzuki.html" class="link">Suzuki</a></li>
            <li class="link-item"><a href="yamaha.html" class="link">Yamaha</a></li>
            <li class="link-item"><a href="aboutUs.html" class="link">thêm</a></li>
        </ul>
        <div class="nav-items">
            <a>
                <p id="search">
                   <img src="https://img.icons8.com/ios-filled/60/000000/search--v1.png"/>
                </p>
            </a>
            <a>
                <img src="https://img.icons8.com/ios-filled/60/000000/paid-bill.png"/>
            </a>
            <a href="cart.html">
                <p id="numOfChosenProduct">12+</p>
                <img src="https://img.icons8.com/ios-glyphs/100/000000/shopping-cart--v1.png"/>
            </a>
        </div>
    `;
}

createNav();

// nav popup
const userImageButton = document.querySelector('#user-img');
const userPop = document.querySelector('.login-logout-popup');
const popuptext = document.querySelector('.account-info');
const actionBtn = document.querySelector('#user-btn');
const searchBox = document.querySelector('.search-box');
const searchBtn = document.querySelector('.search-btn');
const logoAction = document.querySelector('.brand-logo');

userImageButton.addEventListener('click', () => {
    userPop.classList.toggle('hide');
})

actionBtn.addEventListener('click', () => {
    popuptext.innerHTML = 'Log in to place order';
    actionBtn.innerHTML = 'Log in';
    actionBtn.addEventListener('click', () => {
        location.href = 'login.html';
    })
})


searchBtn.addEventListener('click', () => {
    if(searchBox.value.length){
        location.href = 'search.html';
    }
    else{
        location.href = '404.html';
    }
})

logoAction.addEventListener('click', () => {
    location.href = 'index.html';
})