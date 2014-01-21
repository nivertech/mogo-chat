App.UserEditRoute = App.AuthenticatedRoute.extend
  setupController: (controller, model)->
    attributes = model.getProperties("firstName", "lastName", "email", "password", "role")
    for key, value of attributes
      controller.set key, value

    controller.set "model", model

  model: ->
    @modelFor("user")
