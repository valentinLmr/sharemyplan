const changePlace = () => {
  const lessPlace = (currentTarget) => {
    const placeElement = document.getElementById('subscription_available_places');
      if ( parseInt(placeElement.value) > 1) {
        placeElement.value = parseInt(placeElement.value) - 1;
      }
  };

  const addPlace =(currentTarget) => {
    const placeElement = document.getElementById('subscription_available_places');

    placeElement.value = parseInt(placeElement.value) + 1;
  };


    const less = document.querySelector('.less_place');

    less.addEventListener("click", (event) => {
       // console.log(event.currentTarget);
        lessPlace(event.currentTarget);
    });

    const add = document.querySelector('.add_place');

    add.addEventListener("click", (event) => {
     // console.log(event.currentTarget);
      addPlace(event.currentTarget);
    });
};
export { changePlace }
