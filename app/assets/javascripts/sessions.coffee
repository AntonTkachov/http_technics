$(document).on 'ready page:load', ->
  $modal = $('.modal')
  $modal.modal('show')
  $modal.modal({backdrop: 'static'})
