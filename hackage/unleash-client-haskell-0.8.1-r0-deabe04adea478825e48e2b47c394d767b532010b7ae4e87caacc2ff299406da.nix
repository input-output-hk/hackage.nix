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
      identifier = { name = "unleash-client-haskell"; version = "0.8.1"; };
      license = "MIT";
      copyright = "Copyright © FINN.no AS, Inc. All rights reserved.";
      maintainer = "See README.md";
      author = "FINN.no";
      homepage = "https://github.com/finn-no/unleash-client-haskell";
      url = "";
      synopsis = "Unleash feature toggle client";
      description = "This is an [Unleash](https://www.getunleash.io/) client SDK for Haskell.\n\n'Unleash.Client' provides a stateful HTTP client with functions and types for:\n\n    - Client configuration\n    - Client registration\n    - Fetching feature toggles\n    - Fetching variants\n    - Sending metrics\n\nSee [the source repo](https://github.com/finn-no/unleash-client-haskell) for more information and example usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unleash-client-haskell-core" or (errorHandler.buildDepError "unleash-client-haskell-core"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unleash-client-haskell" or (errorHandler.buildDepError "unleash-client-haskell"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
    };
  }