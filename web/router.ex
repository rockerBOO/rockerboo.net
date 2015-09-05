defmodule Personal.Router do
  use Personal.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Personal do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/projects", PageController, :projects
    get "/contact", PageController, :contact
    get "/services", PageController, :services

    get "/virb", ProjectController, :virb
    get "/discovery", ProjectController, :discovery
    get "/chatbot", ProjectController, :chatbot

    get  "/register", RegistrationController, :new
    post "/register", RegistrationController, :create

    get    "/login",  SessionController, :new
    post   "/login",  SessionController, :create
    delete "/logout", SessionController, :delete

    resources "/posts", PostController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Personal do
  #   pipe_through :api
  # end
end
