jQuery ->
  comments.setAutoUpdate()

comments =
  interval: 10 # in seconds
  container: '#comments'
  url: '/comments'
  update: ->
    jQuery.ajax(
      comments.url
      success: (data, textStatus, jqXHR) ->
        $(comments.container).html(data)
    )
  setAutoUpdate: ->
    setInterval (-> comments.update()), comments.interval * 1000

