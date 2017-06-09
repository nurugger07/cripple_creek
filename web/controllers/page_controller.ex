defmodule CrippleCreek.PageController do
  use CrippleCreek.Web, :controller

  def index(conn, _params) do
    case Coyote.call({:GET, "/"}) do
      {:ok, response} ->
        render conn, :index, text: response
      {:error, message} ->
        render conn, message
    end
  end
end
