# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

matchSizes = (a) ->
  selector = $(a).hasClass('description') ? '.links' : '.description'
  b = $(a).siblings(selector)
  a_height = $(a).css('height')
  b_height = b.css('height')
  b.css('height', a_height)

# addItem = () ->
#   list_item = $('form ul li').last().clone()
#   list_item.children('textarea').val('')
#   list_item.appendTo('form ul')

$(document).ready( () ->
  $('textarea').attr('rows', '1').autosize({append: '\n', callback: matchSizes})
)
