defmodule AppApiWeb.Router do
  use AppApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AppApiWeb do
    pipe_through :api
    get "/auth/google/callback", GoogleAuthController, :index
  end

  scope "/api", AppApiWeb do
    pipe_through :api
    get "/auth/urls", AuthUrlController, :index
  end
end
