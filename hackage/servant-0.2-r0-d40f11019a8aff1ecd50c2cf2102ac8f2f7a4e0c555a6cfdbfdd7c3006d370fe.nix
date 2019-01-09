{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.parsec)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.string-conversions)
          (hsPkgs.system-filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.warp)
          ];
        };
      exes = {
        "greet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.aeson)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.parsec)
            (hsPkgs.servant)
            (hsPkgs.string-conversions)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }