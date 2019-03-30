defmodule Talar do
  @moduledoc """
  Talar keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  @spec foo(String.t()) :: boolean()
  def foo(_bar) do
    true
  end
end
