EmberApp.MovieController = Ember.ObjectController.extend
  isEditing: false
  saveSucceeded: false
  saveFailed: false
  
  actions:
    # Note: Only put button actions in "actions" section. Don't put computed
    # properties or Observers in this section, but on the same indent level
    # as 'actions'.
    edit: ->
      @set("isEditing", true)
      
    cancel: ->
      @get("content").rollback()
      @set("isEditing", false)
    
    save: ->
      @get("content").save().then @didSave.bind(this), @didNotSave.bind(this)
      @set("isEditing", false)

  didSave: ->
    @set("saveSucceeded", true)
    @set("saveFailed", false)

  didNotSave: ->
    @set("saveSucceeded", false)
    @set("saveFailed", true)
  