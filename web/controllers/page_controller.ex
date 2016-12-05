defmodule Collabweb.PageController do
  use Collabweb.Web, :controller

  def show(conn, _params) do
    render conn, "show.html"
  end
end
