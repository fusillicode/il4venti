defmodule Il4ventiWeb.PageController do
  use Il4ventiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
