{View} = require 'atom'

module.exports =
class LanguageSystemverilogView extends View
  @content: ->
    @div class: 'language-systemverilog overlay from-top', =>
      @div "The LanguageSystemverilog package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "language-systemverilog:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "LanguageSystemverilogView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
