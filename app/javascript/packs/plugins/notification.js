
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
 export { createNotification }
