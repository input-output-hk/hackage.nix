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
      identifier = { name = "servant-docs"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "generate API docs for your servant webservice";
      description = "Library for generating API docs from a servant API definition.\n\nRunnable example below that prints API docs in markdown.\n\n> {-# LANGUAGE DataKinds #-}\n> {-# LANGUAGE PolyKinds #-}\n> {-# LANGUAGE TypeFamilies #-}\n> {-# LANGUAGE DeriveGeneric #-}\n> {-# LANGUAGE TypeOperators #-}\n> {-# LANGUAGE FlexibleInstances #-}\n> {-# LANGUAGE OverloadedStrings #-}\n>\n> import Data.Proxy\n> import Data.Text\n> import Servant\n>\n> -- our type for a Greeting message\n> data Greet = Greet { _msg :: Text }\n>   deriving (Generic, Show)\n>\n> -- we get our JSON serialization for free\n> instance FromJSON Greet\n> instance ToJSON Greet\n>\n> -- we provide a sample value for the 'Greet' type\n> instance ToSample Greet where\n>   toSample = Just g\n>\n>     where g = Greet \"Hello, haskeller!\"\n>\n> instance ToParam (QueryParam \"capital\" Bool) where\n>   toParam _ =\n>     DocQueryParam \"capital\"\n>                   [\"true\", \"false\"]\n>                   \"Get the greeting message in uppercase (true) or not (false). Default is false.\"\n>\n> instance ToCapture (Capture \"name\" Text) where\n>   toCapture _ = DocCapture \"name\" \"name of the person to greet\"\n>\n> instance ToCapture (Capture \"greetid\" Text) where\n>   toCapture _ = DocCapture \"greetid\" \"identifier of the greet msg to remove\"\n>\n> -- API specification\n> type TestApi =\n>        \"hello\" :> Capture \"name\" Text :> QueryParam \"capital\" Bool :> Get Greet\n>   :<|> \"greet\" :> RQBody Greet :> Post Greet\n>   :<|> \"delete\" :> Capture \"greetid\" Text :> Delete\n>\n> testApi :: Proxy TestApi\n> testApi = Proxy\n>\n> -- Generate the Documentation's ADT\n> greetDocs :: API\n> greetDocs = docs testApi\n>\n> main :: IO ()\n> main = putStrLn \$ markdown greetDocs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      exes = {
        "greet-docs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-docs" or (buildDepError "servant-docs"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }