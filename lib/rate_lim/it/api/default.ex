defmodule RateLimIt.Api.Default do
  @moduledoc """
  Documentation for RateLimIt.Api.Default.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://www.ratelim.it/api/v1"
  plug Tesla.Middleware.JSON

  @doc """
  create limit definition

  create definition if it does not already exist
  """
  def create_limit_definition(limit_definition) do
    method = [method: :post]
    url = [url: "/limits"]
    query_params = []
    header_params = []
    body_params = [body: limit_definition]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Is the flag on?

  
  """
  def flag_status(feature, lookup_key, attributes) do
    method = [method: :get]
    url = [url: "/featureflags/#{feature}/on"]
    query_params = [query: [{:"lookupKey", lookup_key}, {:"attributes", attributes}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  get all

  
  """
  def get_all_flags(featureflag) do
    method = [method: :get]
    url = [url: "/featureflags"]
    query_params = []
    header_params = []
    body_params = [body: featureflag]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  getlimits

  Get all of your limit definitions 
  """
  def getlimits() do
    method = [method: :get]
    url = [url: "/limits"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  check a limit

  check to see whether tokens are available for a given limit
  """
  def limitcheck(limit_request) do
    method = [method: :post]
    url = [url: "/limitcheck"]
    query_params = []
    header_params = []
    body_params = [body: limit_request]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  return a limit

  Adds an item to the system
  """
  def limitreturn(limit_response) do
    method = [method: :post]
    url = [url: "/limitreturn"]
    query_params = []
    header_params = []
    body_params = [body: limit_response]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  create or overwrite existing definition

  create or overwrite existing definition
  """
  def upsert_limitdefinition(limit_definition) do
    method = [method: :put]
    url = [url: "/limits"]
    query_params = []
    header_params = []
    body_params = [body: limit_definition]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  upsert a featureflag

  
  """
  def upsert_flag(featureflag) do
    method = [method: :put]
    url = [url: "/featureflags"]
    query_params = []
    header_params = []
    body_params = [body: featureflag]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
