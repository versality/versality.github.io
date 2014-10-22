---
---
$ ->
  index = $('#index-content')

  whiteSpace = $(window).height() - index.height()
  whiteSpace = whiteSpace / 2.2
  index.css('padding-top', whiteSpace)

  email = ['pertsovsky.com', 'artyom']
  $('.mail-to').attr('href', 'mailto:' + email[1] + '@' + email[0])
