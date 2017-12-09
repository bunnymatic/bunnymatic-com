defmodule BunnymaticCom.PageController do
  use BunnymaticCom.Web, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
