

// const listenSteps = () => {
//   const submits = document.querySelectorAll('.next');
//   submits.forEach((submit) => {
//     submit.addEventListener("click", moveForward);
//   })
// }

// export { listenSteps }


const displayQuestion = (id) => {
  const formulaire = document.getElementById('form')
  const selectionService = document.getElementById('selection')
  formulaire.classList.remove('d-none')
  selectionService.classList.add('d-none')


  const form = document.getElementById('new_subscription')
  form.action = `/services/${id}/subscriptions`
}

const displayServices = (category) => {
  const categoryLists = document.querySelectorAll(`[data-categoryList='${category}']`);
  // console.log(categoryList)
  categoryLists.forEach((categoryList)=> {
  categoryList.classList.toggle('d-none');
  });
};


  const options = document.querySelectorAll(".service")
  options.forEach((option) =>{
    option.addEventListener("click", (event) => {
      displayQuestion(event.currentTarget.dataset.id)
    })
  });

const categoryClicker = () => {
  const services = document.querySelectorAll(".category");

  services.forEach((service) => {
    service.addEventListener("click", (event) => {
      displayServices(event.currentTarget.dataset.category);
    });
  });
};

export { categoryClicker }
