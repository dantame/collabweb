defmodule Collabweb.Router do
  use Collabweb.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Collabweb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", Collabweb do
  #   pipe_through :api
  # end
end
