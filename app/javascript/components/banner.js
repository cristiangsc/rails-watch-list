import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-js', {
    strings: ["Comenta las mejores películas"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
