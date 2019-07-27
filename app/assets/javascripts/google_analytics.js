document.addEventListener('turbolinks:load', function(event) {
    if (typeof gtag === 'function') {
      gtag('config', 'UA-144729623-1', {
        'page_location': event.data.url
      });
    }
  });