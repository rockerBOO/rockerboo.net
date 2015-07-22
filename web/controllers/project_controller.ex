defmodule Personal.ProjectController do
  use Personal.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def discovery(conn, _params) do
    render conn, "discovery.html"
  end

  def virb(conn, _params) do
    render conn, "virb.html"
  end

  def chatbot(conn, _params) do
    render conn, "chatbot.html"
  end
end
