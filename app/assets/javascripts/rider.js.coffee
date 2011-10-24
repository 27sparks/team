# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ -> 
  $('.riderslide:first').siblings('.riderslide').hide()

  speed = 3000
  pause = false  
  news_slide = $('.riderslide:first')
  
  slideshow = (slide) ->
    setTimeout( => 
      if slide.next('.riderslide').length
        next_slide = slide.next('.riderslide')
      else
        next_slide = $('.riderslide:first')
      slide.hide()
      next_slide.fadeIn(500)
      slideshow next_slide
    , speed*2)

  slideshow(news_slide)