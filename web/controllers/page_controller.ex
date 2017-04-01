defmodule CrippleCreek.PageController do
  use CrippleCreek.Web, :controller

  def index(conn, _params) do
    case GenServer.call(Coyote, {:GET, "/"}) do
      {:ok, response} ->
        text conn, response
      {:error, message} ->
        text conn, message
    end
  end
  
  def show(conn, _params) do
    case GenServer.call(Coyote, {:GET, "/welcome"}) do
      {:ok, response} ->
        text conn, response
      {:error, message} ->
        text conn, message
    end
  end
end
