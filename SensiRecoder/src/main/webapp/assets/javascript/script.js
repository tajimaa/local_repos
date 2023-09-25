document.addEventListener('DOMContentLoaded', () => {
  const loading = document.querySelector('.loading');
  if (loading !== null) {
    setTimeout(function() {
      loading.classList.add('hide');
    }, 1000);
  }
});