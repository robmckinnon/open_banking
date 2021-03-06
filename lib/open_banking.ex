defmodule OpenBanking do
  @moduledoc """
  For performing calls against Open Banking API.
  """

  @doc """
  Client Credentials Grant
  https://tools.ietf.org/html/rfc6749#section-4.4

  "The client can request an access token using only its client
   credentials...

     +---------+                                  +---------------+
     |         |                                  |               |
     |         |>--(A)- Client Authentication --->| Authorization |
     | Client  |                                  |     Server    |
     |         |<--(B)---- Access Token ---------<|               |
     |         |                                  |               |
     +---------+                                  +---------------+

   The Client Credentials Flow includes the following steps:

   (A)  The client authenticates with the authorization server and
        requests an access token from the token endpoint.

   (B)  The authorization server authenticates the client, and if valid,
        issues an access token."

  """
  defdelegate client_credentials_grant_request_access_token(config),
    to: OpenBanking.ClientCredentialsGrant,
    as: :request_access_token
end
