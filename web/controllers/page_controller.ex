defmodule Thaumatin.PageController do
  use Thaumatin.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
