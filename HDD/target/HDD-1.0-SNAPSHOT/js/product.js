const productImages = document.querySelectorAll(".product-images img");
const productImageSlide = document.querySelector(".image-slider");

let activeImageSlide = 0;

productImages.forEach((item, i) => {
    item.addEventListener('click', () => {
        productImages[activeImageSlide].classList.remove('active');
        item.classList.add('active');
        productImageSlide.style.backgroundImage = `url('${item.src}')`;
        activeImageSlide = i;
    })
})


// toggle color button
const colorBtns = document.querySelectorAll('.color-radio-btn');
let checkedBtn = 0;

colorBtns.forEach((item, i) =>{
    item.addEventListener('click', () =>{
        colorBtns[checkedBtn].classList.remove('check');
        item.classList.add('check');
        checkedBtn = i;
        var id = item.textContent;
        var src = document.getElementById(id).src;
        productImageSlide.style.backgroundImage = `url('${src}')`;
    })
})

