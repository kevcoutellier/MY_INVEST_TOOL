
export const navbar = () => {
  document.querySelector('.toggle-side-nav').addEventListener('click', () => {
    document.querySelector('.nav-offset').classList.toggle('active');
  })

  document.querySelector('.overlay').addEventListener('click', () => {
    document.querySelector('.nav-offset').classList.toggle('active');
  })
}
