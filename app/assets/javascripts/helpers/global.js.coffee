define [], ()->

  Global = ->
    __instance = @

    Global = ->
      __instance

  new Global
