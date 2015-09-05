defmodule Personal.PageController do
  use Personal.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def projects(conn, _params) do
    render conn, "projects.html"
  end


  def services(conn, _params) do
    render conn, "services.html"
  end


  def contact(conn, _params) do
    render conn, "contact.html"
  end
end
