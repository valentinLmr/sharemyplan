

// const listenSteps = () => {
//   const submits = document.querySelectorAll('.next');
//   submits.forEach((submit) => {
//     submit.addEventListener("click", moveForward);
//   })
// }

// export { listenSteps }




const displayServices = (category) => {
  console.log(category);
  const categoryList = document.querySelector(`[data-categoryList='${category}']`);
  // console.log(categoryList)
  const option = document.querySelectorAll('option');
  option.classList.toggle('d-none');

  };

const categoryClicker = () => {
  const services = document.querySelectorAll(".category");

  services.forEach((service) => {
    service.addEventListener("click", (event) => {
      displayServices(event.currentTarget.dataset.category);
    });
  });
};

export { categoryClicker }
