var app = {

  $body: null,

  init: function() {

    console.log('init');

    app.$body = $('body');

    $('.toggle-menu').on('click', app.handleClickMenu);

  },
  handleClickMenu: function(event) {

    event.preventDefault();

    app.$body.toggleClass('menu-is-open');
  }
};

$(app.init);
