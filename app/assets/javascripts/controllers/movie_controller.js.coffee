EmberApp.MovieController = Ember.ObjectController.extend
  isEditing: false
  
  actions:
    # Note: Only put button actions in "actions" section. Don't put computed
    # properties or Observers in this section, but on the same indent level
    # as 'actions'.
    edit: ->
      @set("isEditing", true)
      
    cancel: ->
      @set("isEditing", false)
    
    save: ->
      @set("isEditing", false)
