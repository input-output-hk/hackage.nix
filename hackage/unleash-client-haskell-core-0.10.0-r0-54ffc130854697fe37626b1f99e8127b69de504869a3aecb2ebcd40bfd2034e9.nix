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
      specVersion = "3.0";
      identifier = {
        name = "unleash-client-haskell-core";
        version = "0.10.0";
        };
      license = "MIT";
      copyright = "Copyright © FINN.no AS, Inc. All rights reserved.";
      maintainer = "See README.md";
      author = "FINN.no";
      homepage = "https://github.com/finn-no/unleash-client-haskell-core";
      url = "";
      synopsis = "Unleash feature toggle client core";
      description = "This is a library for evaluating [Unleash](https://www.getunleash.io/) feature toggles.\nThe 'Unleash' module provides functions and types for checking feature toggles and variants.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."murmur3" or (errorHandler.buildDepError "murmur3"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
          ];
        buildable = true;
        };
      tests = {
        "unleash-client-haskell-core-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unleash-client-haskell-core" or (errorHandler.buildDepError "unleash-client-haskell-core"))
            ];
          buildable = true;
          };
        };
      };
    }