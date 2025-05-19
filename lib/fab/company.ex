defmodule Fab.Company do
  @moduledoc """
  Functions for generating random information about a business.
  """

  import Fab.Locale
  import Fab.Randomizer

  @callback buzz_adjective ::
              [String.t()]

  @callback buzz_noun ::
              [String.t()]

  @callback buzz_phrase ::
              [Fab.Template.t()]

  @callback buzz_verb ::
              [String.t()]

  @callback name ::
              [Fab.Template.t()]

  @callback name_suffix ::
              [String.t()]

  @doc """
  Returns a random adjective buzzword.

  ## Examples

      iex> Fab.Company.buzz_adjective()
      "24/7"
  """
  @spec buzz_adjective :: String.t()
  def buzz_adjective do
    __MODULE__
    |> localize(:buzz_adjective, [])
    |> random()
  end

  @doc """
  Returns a random noun buzzword.

  ## Examples

      iex> Fab.Company.buzz_noun()
      "architectures"
  """
  @spec buzz_noun :: String.t()
  def buzz_noun do
    __MODULE__
    |> localize(:buzz_noun, [])
    |> random()
  end

  @doc """
  Returns a random buzz phrase.

  ## Examples

      iex> Fab.Company.buzz_phrase()
      "target B2C solutions"
  """
  @spec buzz_phrase :: String.t()
  def buzz_phrase do
    __MODULE__
    |> localize(:buzz_phrase, [])
    |> Enum.random()
    |> Fab.Template.render()
  end

  @doc """
  Returns a random verb buzzword.

  ## Examples

      iex> Fab.Company.buzz_verb()
      "transition"
  """
  @spec buzz_verb :: String.t()
  def buzz_verb do
    __MODULE__
    |> localize(:buzz_verb, [])
    |> random()
  end

  @doc """
  Returns a random company name.

  ## Examples

      iex> Fab.Company.name()
      "Orn, Feil and Pouros"
  """
  @doc since: "1.0.0"
  @spec name :: String.t()
  def name do
    __MODULE__
    |> localize(:name, [])
    |> random()
    |> Fab.Template.render()
  end

  @doc """
  Returns a random company name suffix.

  ## Examples

      iex> Fab.Company.name_suffix()
      "and Sons"
  """
  @doc since: "1.0.0"
  @spec name_suffix :: String.t()
  def name_suffix do
    __MODULE__
    |> localize(:name_suffix, [])
    |> random()
  end
end
