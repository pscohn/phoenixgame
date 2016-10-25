defmodule Phoenixgame.HomeController do
  use Phoenixgame.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end