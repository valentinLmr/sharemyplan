

// const listenSteps = () => {
//   const submits = document.querySelectorAll('.next');
//   submits.forEach((submit) => {
//     submit.addEventListener("click", moveForward);
//   })
// }

// export { listenSteps }

const firstTry = document.getElementById('first-click');



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
  const categoryAll = document.querySelectorAll(".options");


  services.forEach((service) => {
    service.addEventListener("click", (event) => {
      service.classList.toggle('active');

      if (firstTry.dataset.click == 'false') {
        hideAllServices();
        firstTry.dataset.click = 'true';
      }

      displayServices(event.currentTarget.dataset.category);
    });
  });
};

const hideAllServices = () => {
  const allCategoryLists = document.querySelectorAll(`[data-categoryList]`);
  allCategoryLists.forEach((element) => {
    element.classList.add('d-none');
  })
}

export { categoryClicker }
