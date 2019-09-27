let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in <http://haskell-servant.github.io/getting-started/ the getting started> guide.\n\nHere's a runnable example, with comments, that defines a dummy API and\nimplements a webserver that serves this API. You can find it <https://github.com/haskell-servant/servant/blob/master/example/greet.hs here> too.\n\n> {-# LANGUAGE DataKinds #-}\n> {-# LANGUAGE PolyKinds #-}\n> {-# LANGUAGE TypeFamilies #-}\n> {-# LANGUAGE DeriveGeneric #-}\n> {-# LANGUAGE TypeOperators #-}\n> {-# LANGUAGE OverloadedStrings #-}\n>\n> import Data.Aeson\n> import Data.Monoid\n> import Data.Proxy\n> import Data.Text\n> import GHC.Generics\n> import Network.Wai\n> import Network.Wai.Handler.Warp\n>\n> import Servant\n>\n> -- * Example\n>\n> -- | A greet message data type\n> newtype Greet = Greet { msg :: Text }\n>   deriving (Generic, Show)\n>\n> instance FromJSON Greet\n> instance ToJSON Greet\n>\n> -- API specification\n> type TestApi =\n>        -- GET /hello/:name?capital={true, false}\n>        \"hello\" :> Capture \"name\" Text :> QueryParam \"capital\" Bool :> Get Greet\n>\n>        -- POST /greet with a Greet as JSON in the request body,\n>        --      returns a Greet as JSON\n>   :<|> \"greet\" :> ReqBody Greet :> Post Greet\n>\n>        -- DELETE /greet/:greetid\n>   :<|> \"greet\" :> Capture \"greetid\" Text :> Delete\n>\n> testApi :: Proxy TestApi\n> testApi = Proxy\n>\n> -- Server-side handlers.\n> --\n> -- There's one handler per endpoint, which, just like in the type\n> -- that represents the API, are glued together using :<|>.\n> --\n> -- Each handler runs in the 'EitherT (Int, String) IO' monad.\n> server :: Server TestApi\n> server = helloH :<|> postGreetH :<|> deleteGreetH\n>\n>   where helloH name Nothing = helloH name (Just False)\n>         helloH name (Just False) = return . Greet \$ \"Hello, \" <> name\n>         helloH name (Just True) = return . Greet . toUpper \$ \"Hello, \" <> name\n>\n>         postGreetH greet = return greet\n>\n>         deleteGreetH _ = return ()\n>\n> -- Turn the server into a WAI app. 'serve' is provided by servant,\n> -- more precisely by the Servant.Server module.\n> test :: Application\n> test = serve testApi server\n>\n> -- Run the server.\n> --\n> -- 'run' comes from Network.Wai.Handler.Warp\n> runTestServer :: Port -> IO ()\n> runTestServer port = run port test\n>\n> -- Put this all to work!\n> main :: IO ()\n> main = runTestServer 8001";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        buildable = true;
        };
      exes = {
        "greet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }