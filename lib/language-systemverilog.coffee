LanguageSystemverilogView = require './language-systemverilog-view'

module.exports =
  languageSystemverilogView: null

  activate: (state) ->
    @languageSystemverilogView = new LanguageSystemverilogView(state.languageSystemverilogViewState)

  deactivate: ->
    @languageSystemverilogView.destroy()

  serialize: ->
    languageSystemverilogViewState: @languageSystemverilogView.serialize()
