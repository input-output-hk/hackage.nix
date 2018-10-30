{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "google-oauth2";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Google OAuth2 token negotiation";
      description = "Interacting with the Google OAuth2 authorization API\n\n1. Prompt the user for a verification code\n2. POST that code to the Google API for a set of tokens (access and refresh)\n3. Use the access token until it expires\n4. Use the refresh token to get a new access token\n5. Repeat from 3\n\nExample usage:\n\n> import Data.Monoid\n> import Network.Google.OAuth2\n> import Network.HTTP.Conduit\n> import Network.HTTP.Types (hAuthorization)\n>\n> import qualified Data.ByteString.Char8 as B8\n> import qualified Data.ByteString.Lazy.Char8 as L8\n>\n> main :: IO ()\n> main = do\n>     let client = OAuth2Client clientId clientSecret\n>         scopes = [\"https://www.googleapis.com/auth/drive\"]\n>\n>     token <- getAccessToken client scopes Nothing\n>\n>     request <- parseUrl \"https://www.googleapis.com/drive/v2/files\"\n>     response <- withManager \$ httpLbs \$ authorize token request\n>\n>     L8.putStrLn \$ responseBody response\n>\n>  where\n>    authorize token request = request\n>        -- Note: haddock chokes on curly braces for some reason, so I'm using\n>        -- parens here instead.\n>        ( requestHeaders = [(hAuthorization, B8.pack \$ \"Bearer \" <> token)] )\n>\n>    -- Setup in Google Developers Console\n>    clientId = \"...\"\n>    clientSecret = \"...\"\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.google-oauth2)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.load-env)
          ];
        };
      };
    };
  }