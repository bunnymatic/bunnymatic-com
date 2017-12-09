defmodule BunnymaticCom.PageControllerTest do
  use BunnymaticCom.ConnCase, async: true

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to your Razor Phoenix app!"
  end
end
