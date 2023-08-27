defmodule Countdown.EventsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Countdown.Events` context.
  """

  @doc """
  Generate a event.
  """
  def event_fixture(attrs \\ %{}) do
    {:ok, event} =
      attrs
      |> Enum.into(%{
        due: ~N[2023-08-25 13:44:00],
        title: "some title"
      })
      |> Countdown.Events.create_event()

    event
  end
end
