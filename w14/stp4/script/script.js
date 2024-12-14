let slider = document.querySelector('input');
let valuePlace = document.querySelector('p');
console.log(slider);
console.log(valuePlace);
valuePlace.textContent = slider.value;
slider.addEventListener('change', (e) => {
  console.log(slider.value);
  valuePlace.textContent = slider.value;
});
