# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# $ -> 
#   $('#rotator.slide:first').siblings('.slide').hide()

#   speed = 2000
#   pause = false  
#   news_slide = $('#rotator.slide:first')
  
#   slideshow = (slide) ->
#     setTimeout( => 
#       if slide.next('.slide').length
#         next_slide = slide.next('.slide')
#       else
#         next_slide = $('.slide:first')
#       slide.hide()
#       next_slide.fadeIn(500)
#       slideshow next_slide
#     , speed*2)

#   slideshow(news_slide)
$ ->
  $('.rotator').cycle({
    fx: 'scrollLeft',
    pause: 1,
    delay: -3000
    })
  $('.rider_rotator').cycle({
    fx: 'fade',
    pause: 1,
    random: 1,
    delay: -3500
    })
  $('.material_slideshow').cycle({
    fx: 'fade',
    pause: 1,
    delay: -4000
    })  
  $('.gallery_rotator').cycle({
    fx: 'fade',
    pause: 1,
    random: 1,
    delay: -4000
    })  
  $('#bilderslideshow').cycle({
    fx: 'fade',
    pause: 1,
    delay: -4000
    })  