document.addEventListener('turbolinks:load', function(event) {
    if (typeof gtag === 'function') {
      gtag('config', 'UA-139212540-2', {
        'page_location': event.data.url
      });
    }
  });