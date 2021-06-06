$(document).ready(function () {
  console.log('connected')

  const navbarToggler = $('.navbar-toggler')
  const transformingBars = $('.transforming-bars')
  const navbarCollapse = $('.navbar-collapse')

  $(navbarToggler).click(function () {
    $(transformingBars).toggleClass('barsActive')
    $(navbarCollapse).toggleClass('activeNav')
    $(navbarCollapse).css('width', '300px')
  })
})
