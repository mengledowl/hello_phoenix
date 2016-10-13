defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, params) do
  	# conn
  	# |> put_layout("admin.html")
   #  |> render :index, message: params["message"]
   	redirect conn, to: redirect_test_path(conn, :redirect_test)
  end

  def redirect_test(conn, _params) do
  	text conn, "Redirect!"
  end
end
