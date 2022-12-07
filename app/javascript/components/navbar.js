
export const navbar = () => {

  const navToggle = document.querySelector('.toggle-side-nav')

  if (navToggle) {
    document.querySelector('.toggle-side-nav').addEventListener('click', () => {
      document.querySelector('.nav-offset').classList.toggle('active');
    })

    document.querySelector('.overlay').addEventListener('click', () => {
      document.querySelector('.nav-offset').classList.toggle('active');
    })
  }

}
