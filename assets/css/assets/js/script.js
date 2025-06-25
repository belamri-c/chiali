document.addEventListener('DOMContentLoaded', () => {
  document.querySelector('.nav-toggle').addEventListener('click', () => {
    document.querySelector('.nav ul').classList.toggle('show');
  });
});
