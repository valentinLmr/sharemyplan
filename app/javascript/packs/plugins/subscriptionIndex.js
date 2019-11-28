const someChange = () => {

  const subscriptionCardAll = document.querySelectorAll('.subcard-plus');

  subscriptionCardAll.forEach((card) => {
    card.addEventListener("click", (event) => {
      console.log(card.classList)
      card.firstChild.nextSibling.classList.toggle("fa-plus-circle")
      card.firstChild.nextSibling.classList.toggle("fa-times-circle")
    });
  });


  // const subscriptionCard = document.getElementById('plus');
  // console.log(subscriptionCard.classList.value)

  // subscriptionCard.addEventListener("click", (event) => {
  //   if (subscriptionCard.classList.value == 'fas fa-plus-circle') {
  //     subscriptionCard.classList.value = 'fas fa-times-circle';
  //   }else{
  //     subscriptionCard.classList.value = 'fas fa-plus-circle';
  //   }
  // });
}

export { someChange }
