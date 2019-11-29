
const nav = document.querySelector('.navbar');










// Get the offset position of the navbar
const sticky = nav.offsetTop;

// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
function stickyNavigation() {
  if (window.pageYOffset >= sticky) {
    nav.classList.add("sticky")
  } else {
    nav.classList.remove("sticky");
  }
}


export { stickyNavigation }
