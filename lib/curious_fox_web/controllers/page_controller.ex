defmodule CuriousFoxWeb.PageController do
  use CuriousFoxWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
