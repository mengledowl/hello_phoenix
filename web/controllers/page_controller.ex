defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, params) do
  	# conn
   #  |> render :index, message: params["message"]
   	# redirect conn, to: redirect_test_path(conn, :redirect_test)

   	pages = [%{title: "foo"}, %{title: "bar"}]

   	render conn, "index.json", pages: pages
  end

  def show(conn, _params) do
  	page = %{title: "foo"}

  	render conn, "show.json", page: page
  end

  def redirect_test(conn, _params) do
  	text conn, "Redirect!"
  end
end
