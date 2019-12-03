
const createNotification = () => {
  const notification = document.querySelector(".notifications")
  const circle = document.querySelector('.add')

  console.log (circle)

  if (notification.innerHTML) {
   circle.classList.add("circle-notif");
   circle.innerHTML = "1";
  }else{
    circle.classList.remove("circle-notif");
  };
};


var click = 0

const menuNotification = document.getElementById("notif")
menuNotification.addEventListener("click", (event) => {
  click ++
  if (click > 1) {
    notification.unviewed = false;
  };
})

 export { createNotification }
