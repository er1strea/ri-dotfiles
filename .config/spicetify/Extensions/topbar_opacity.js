(function () {
  // Ensure the script runs after Spicetify is loaded
  if (!Spicetify?.Platform) {
    setTimeout(arguments.callee, 100);
    return;
  }

  // Add scroll event listener
  document.addEventListener('scroll', () => {
    const topBar = document.querySelector('.main-topBar-background');
    if (topBar) {
      topBar.style.opacity = window.scrollY === 0 ? '0' : '1';
      topBar.style.backgroundColor = 'var(--spice-main)';
    }
  });
})();
