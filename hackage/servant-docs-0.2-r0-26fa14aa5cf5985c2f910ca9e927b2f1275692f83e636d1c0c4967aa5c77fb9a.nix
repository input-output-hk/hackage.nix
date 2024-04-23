{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-docs"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "generate API docs for your servant webservice";
      description = "Library for generating API docs from a servant API definition.\n\nRunnable example below that prints API docs in markdown.\n\n> {-# LANGUAGE DataKinds #-}\n> {-# LANGUAGE PolyKinds #-}\n> {-# LANGUAGE TypeFamilies #-}\n> {-# LANGUAGE DeriveGeneric #-}\n> {-# LANGUAGE TypeOperators #-}\n> {-# LANGUAGE FlexibleInstances #-}\n> {-# LANGUAGE OverloadedStrings #-}\n>\n> import Data.Proxy\n> import Data.Text\n> import Servant\n>\n> -- our type for a Greeting message\n> data Greet = Greet { _msg :: Text }\n>   deriving (Generic, Show)\n>\n> -- we get our JSON serialization for free\n> instance FromJSON Greet\n> instance ToJSON Greet\n>\n> -- we provide a sample value for the 'Greet' type\n> instance ToSample Greet where\n>   toSample = Just g\n>\n>     where g = Greet \"Hello, haskeller!\"\n>\n> instance ToParam (QueryParam \"capital\" Bool) where\n>   toParam _ =\n>     DocQueryParam \"capital\"\n>                   [\"true\", \"false\"]\n>                   \"Get the greeting message in uppercase (true) or not (false). Default is false.\"\n>\n> instance ToCapture (Capture \"name\" Text) where\n>   toCapture _ = DocCapture \"name\" \"name of the person to greet\"\n>\n> instance ToCapture (Capture \"greetid\" Text) where\n>   toCapture _ = DocCapture \"greetid\" \"identifier of the greet msg to remove\"\n>\n> -- API specification\n> type TestApi =\n>        \"hello\" :> Capture \"name\" Text :> QueryParam \"capital\" Bool :> Get Greet\n>   :<|> \"greet\" :> RQBody Greet :> Post Greet\n>   :<|> \"delete\" :> Capture \"greetid\" Text :> Delete\n>\n> testApi :: Proxy TestApi\n> testApi = Proxy\n>\n> -- Generate the Documentation's ADT\n> greetDocs :: API\n> greetDocs = docs testApi\n>\n> main :: IO ()\n> main = putStrLn $ markdown greetDocs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "greet-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }