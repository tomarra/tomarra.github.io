---
---

jQuery(document).ready ->
  pull = jQuery('#pull')
  menu = jQuery('nav ul')
  menuHeight = menu.height()

  jQuery(pull).on 'click', (e) ->
    e.preventDefault()
    menu.slideToggle()
    return

  jQuery(window).resize ->
    w = jQuery(window).width()
    if w > 320 and menu.is(':hidden')
      menu.removeAttr 'style'
    return

  return
