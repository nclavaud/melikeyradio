define [
  'models/tag'
  'views/base/view'
  'templates/tag'
], (Tag, View, template) ->
  'use strict'

  class TagView extends View
    autoRender: true
    tagName: 'li'
    className: 'tag'
    template: template
    template = null

    initialize: ->
      @delegate 'click', ->
        @trigger 'TagView:click', @model

    getTemplateData: ->
      tag:
        @model.getAttributes()
