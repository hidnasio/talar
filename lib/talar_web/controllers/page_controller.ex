defmodule TalarWeb.PageController do
  use TalarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
